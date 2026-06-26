.class public Lcom/narvii/blog/post/PollPostActivity;
.super Lcom/narvii/blog/post/TopicPostActivity;
.source "PollPostActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/blog/post/PollPostActivity$EditHelper;
    }
.end annotation


# static fields
.field static final MAX_POLL_COUNT:I = 0x5

.field static final PICK_POLL_OPTION_FAVORITE:I = 0x23


# instance fields
.field header:Landroid/view/View;

.field root:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/narvii/blog/post/TopicPostActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/blog/post/PollPostActivity;)Lcom/narvii/post/PostObject;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    return-object p0
.end method

.method static synthetic access$100(Lcom/narvii/blog/post/PollPostActivity;)Lcom/narvii/post/PostObject;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    return-object p0
.end method

.method static synthetic access$200(Lcom/narvii/blog/post/PollPostActivity;)Lcom/narvii/post/PostObject;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    return-object p0
.end method

.method private requestFocus()V
    .locals 4

    .line 431
    iget-object v0, p0, Lcom/narvii/blog/post/PollPostActivity;->root:Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 432
    :cond_0
    iget-object v0, p0, Lcom/narvii/blog/post/PollPostActivity;->root:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 434
    iget-object v1, p0, Lcom/narvii/blog/post/PollPostActivity;->root:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 435
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x7f0908a7

    if-ne v2, v3, :cond_1

    const v0, 0x7f09085b

    .line 436
    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 437
    instance-of v1, v0, Landroid/widget/EditText;

    if-eqz v1, :cond_2

    .line 438
    invoke-virtual {v0}, Landroid/widget/TextView;->requestFocus()Z

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private updateAddOptionView(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/PollOption;",
            ">;)V"
        }
    .end annotation

    .line 446
    iget-object v0, p0, Lcom/narvii/blog/post/PollPostActivity;->root:Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    .line 447
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 448
    :cond_0
    iget-object v0, p0, Lcom/narvii/blog/post/PollPostActivity;->root:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_3

    .line 450
    iget-object v1, p0, Lcom/narvii/blog/post/PollPostActivity;->root:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 451
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x7f0908a3

    if-ne v2, v3, :cond_2

    .line 452
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x5

    if-lt v2, v3, :cond_1

    const v2, 0x3e99999a    # 0.3f

    goto :goto_1

    :cond_1
    const/high16 v2, 0x3f800000    # 1.0f

    :goto_1
    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    :goto_2
    return-void
.end method


# virtual methods
.method protected allowSetCover()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected checkEligible()V
    .locals 2

    const-string v0, "blog"

    const-string v1, "poll"

    .line 114
    invoke-virtual {p0, v0, v1}, Lcom/narvii/post/BasePostActivity;->checkEligible(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method closeAllSwipeToDelete(Z)V
    .locals 5

    .line 411
    iget-object v0, p0, Lcom/narvii/blog/post/PollPostActivity;->root:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 412
    iget-object v3, p0, Lcom/narvii/blog/post/PollPostActivity;->root:Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 413
    instance-of v4, v3, Lcom/narvii/widget/SwipeToDeleteLayout;

    if-eqz v4, :cond_0

    .line 414
    check-cast v3, Lcom/narvii/widget/SwipeToDeleteLayout;

    invoke-virtual {v3, v1, p1}, Lcom/narvii/widget/SwipeToDeleteLayout;->setSwipeRight(ZZ)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected doPost(Lcom/narvii/blog/post/BlogPost;)V
    .locals 2

    .line 401
    iget-object v0, p1, Lcom/narvii/blog/post/BlogPost;->polloptList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 402
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v0, 0x0

    .line 403
    invoke-virtual {p0, v1, v0}, Lcom/narvii/blog/post/PollPostActivity;->trimEmptyOptions(Ljava/util/List;Z)I

    move-result v0

    if-lez v0, :cond_0

    .line 404
    iput-object v1, p1, Lcom/narvii/blog/post/BlogPost;->polloptList:Ljava/util/List;

    .line 407
    :cond_0
    invoke-super {p0, p1}, Lcom/narvii/blog/post/TopicPostActivity;->doPost(Lcom/narvii/blog/post/BlogPost;)V

    return-void
.end method

.method protected bridge synthetic doPost(Lcom/narvii/post/PostObject;)V
    .locals 0

    .line 41
    check-cast p1, Lcom/narvii/blog/post/BlogPost;

    invoke-virtual {p0, p1}, Lcom/narvii/blog/post/PollPostActivity;->doPost(Lcom/narvii/blog/post/BlogPost;)V

    return-void
.end method

.method public draftType()Ljava/lang/String;
    .locals 1

    const-string v0, "poll"

    return-object v0
.end method

.method getOptionCell(Landroid/view/View;)Landroid/view/View;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_2

    .line 288
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0908a7

    if-ne v1, v2, :cond_0

    return-object p1

    .line 290
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 291
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method getOptionIndex()I
    .locals 5

    .line 277
    iget-object v0, p0, Lcom/narvii/blog/post/PollPostActivity;->root:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 278
    iget-object v3, p0, Lcom/narvii/blog/post/PollPostActivity;->root:Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/narvii/blog/post/PollPostActivity;->header:Landroid/view/View;

    if-ne v3, v4, :cond_0

    add-int/lit8 v2, v2, 0x1

    return v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method hasDuplicateOptions(Ljava/util/List;Lcom/narvii/model/PollOption;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/PollOption;",
            ">;",
            "Lcom/narvii/model/PollOption;",
            ")Z"
        }
    .end annotation

    .line 315
    iget-object v0, p2, Lcom/narvii/model/PollOption;->title:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 316
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    return v1

    .line 319
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/PollOption;

    if-ne v0, p2, :cond_3

    goto :goto_1

    .line 322
    :cond_3
    invoke-virtual {v0, p2}, Lcom/narvii/model/PollOption;->isDuplicate(Lcom/narvii/model/PollOption;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_4
    return v1
.end method

.method newPollOption()Lcom/narvii/model/PollOption;
    .locals 2

    .line 107
    new-instance v0, Lcom/narvii/model/PollOption;

    invoke-direct {v0}, Lcom/narvii/model/PollOption;-><init>()V

    .line 108
    invoke-virtual {p0}, Lcom/narvii/blog/post/PollPostActivity;->polloptType()I

    move-result v1

    iput v1, v0, Lcom/narvii/model/PollOption;->type:I

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 186
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/blog/post/TopicPostActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x23

    if-ne p1, v0, :cond_2

    const/4 p1, -0x1

    if-ne p2, p1, :cond_2

    if-eqz p3, :cond_2

    const-string p1, "item"

    .line 188
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-class p2, Lcom/narvii/model/Item;

    invoke-static {p1, p2}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/Item;

    const/4 p2, 0x0

    const-string v0, "index"

    .line 189
    invoke-virtual {p3, v0, p2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 190
    invoke-virtual {p0}, Lcom/narvii/blog/post/PollPostActivity;->savePost()Lcom/narvii/blog/post/BlogPost;

    move-result-object p3

    .line 191
    iget-object v0, p3, Lcom/narvii/blog/post/BlogPost;->polloptList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 192
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p3, Lcom/narvii/blog/post/BlogPost;->polloptList:Ljava/util/List;

    .line 194
    :cond_0
    :goto_0
    iget-object v0, p3, Lcom/narvii/blog/post/BlogPost;->polloptList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v1, p2, 0x1

    if-ge v0, v1, :cond_1

    .line 195
    iget-object v0, p3, Lcom/narvii/blog/post/BlogPost;->polloptList:Ljava/util/List;

    invoke-virtual {p0}, Lcom/narvii/blog/post/PollPostActivity;->newPollOption()Lcom/narvii/model/PollOption;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 197
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/blog/post/PollPostActivity;->newPollOption()Lcom/narvii/model/PollOption;

    move-result-object v0

    .line 198
    iput-object p1, v0, Lcom/narvii/model/PollOption;->refObject:Lcom/narvii/model/Feed;

    .line 199
    invoke-virtual {p1}, Lcom/narvii/model/Item;->id()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/narvii/model/PollOption;->refObjectId:Ljava/lang/String;

    .line 200
    invoke-virtual {p1}, Lcom/narvii/model/Item;->objectType()I

    move-result p1

    iput p1, v0, Lcom/narvii/model/PollOption;->refObjectType:I

    .line 201
    iget-object p1, p3, Lcom/narvii/blog/post/BlogPost;->polloptList:Ljava/util/List;

    invoke-interface {p1, p2, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 202
    invoke-virtual {p0, p3}, Lcom/narvii/blog/post/PollPostActivity;->updateView(Lcom/narvii/blog/post/BlogPost;)V

    :cond_2
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9

    .line 119
    invoke-super {p0, p1}, Lcom/narvii/blog/post/TopicPostActivity;->onClick(Landroid/view/View;)V

    .line 120
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f09058d

    const-string v2, "index"

    const/4 v3, 0x0

    const/4 v4, 0x1

    const v5, 0x7f09085a

    if-ne v0, v5, :cond_2

    .line 121
    invoke-virtual {p0, p1}, Lcom/narvii/blog/post/PollPostActivity;->getOptionCell(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 122
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/narvii/model/PollOption;

    .line 123
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    const-string v7, "pollopt"

    .line 124
    invoke-virtual {v6, v7, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 125
    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v6, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-eqz v5, :cond_0

    .line 126
    iget-object v0, v5, Lcom/narvii/model/PollOption;->mediaList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 127
    :goto_0
    iget-object v5, p0, Lcom/narvii/post/BasePostActivity;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    iget-object v7, p0, Lcom/narvii/post/DraftPostActivity;->draftManager:Lcom/narvii/post/DraftManager;

    iget-object v8, p0, Lcom/narvii/post/DraftPostActivity;->draftId:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/narvii/post/DraftManager;->getDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    if-eqz v0, :cond_1

    const/16 v0, 0x40

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    or-int/lit8 v0, v0, 0x4

    invoke-virtual {v5, v7, v6, v0}, Lcom/narvii/media/MediaPickerFragment;->pickMedia(Ljava/io/File;Landroid/os/Bundle;I)V

    .line 130
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v5, 0x7f09033c

    if-ne v0, v5, :cond_3

    .line 131
    invoke-virtual {p0, p1}, Lcom/narvii/blog/post/PollPostActivity;->getOptionCell(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 132
    move-object v5, v0

    check-cast v5, Lcom/narvii/widget/SwipeToDeleteLayout;

    invoke-virtual {v5, v3, v4}, Lcom/narvii/widget/SwipeToDeleteLayout;->setSwipeRight(ZZ)V

    .line 133
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v5, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 135
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v5, 0x7f0908a3

    if-ne v0, v5, :cond_7

    .line 136
    invoke-virtual {p0}, Lcom/narvii/blog/post/PollPostActivity;->savePost()Lcom/narvii/blog/post/BlogPost;

    move-result-object v0

    .line 137
    iget-object v5, v0, Lcom/narvii/blog/post/BlogPost;->polloptList:Ljava/util/List;

    if-eqz v5, :cond_4

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x5

    if-lt v5, v6, :cond_4

    .line 138
    new-instance v0, Lcom/narvii/util/dialog/AlertDialog;

    invoke-direct {v0, p0}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0f0d73

    .line 139
    invoke-virtual {v0, v5}, Landroid/app/Dialog;->setTitle(I)V

    const v5, 0x104000a

    const/4 v6, 0x0

    .line 140
    invoke-virtual {v0, v5, v3, v6}, Lcom/narvii/util/dialog/AlertDialog;->addButton(IILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 141
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    goto :goto_3

    .line 143
    :cond_4
    iget-object v3, v0, Lcom/narvii/blog/post/BlogPost;->polloptList:Ljava/util/List;

    if-nez v3, :cond_5

    .line 144
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lcom/narvii/blog/post/BlogPost;->polloptList:Ljava/util/List;

    .line 146
    :cond_5
    :goto_2
    iget-object v3, v0, Lcom/narvii/blog/post/BlogPost;->polloptList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v5, 0x2

    if-ge v3, v5, :cond_6

    .line 147
    iget-object v3, v0, Lcom/narvii/blog/post/BlogPost;->polloptList:Ljava/util/List;

    invoke-virtual {p0}, Lcom/narvii/blog/post/PollPostActivity;->newPollOption()Lcom/narvii/model/PollOption;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 149
    :cond_6
    iget-object v3, v0, Lcom/narvii/blog/post/BlogPost;->polloptList:Ljava/util/List;

    invoke-virtual {p0}, Lcom/narvii/blog/post/PollPostActivity;->newPollOption()Lcom/narvii/model/PollOption;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    invoke-virtual {p0, v0}, Lcom/narvii/blog/post/PollPostActivity;->updateView(Lcom/narvii/blog/post/BlogPost;)V

    .line 151
    invoke-direct {p0}, Lcom/narvii/blog/post/PollPostActivity;->requestFocus()V

    .line 155
    :cond_7
    :goto_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v3, 0x7f090859

    if-ne v0, v3, :cond_8

    .line 156
    invoke-virtual {p0, p1}, Lcom/narvii/blog/post/PollPostActivity;->getOptionCell(Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    .line 157
    const-class v0, Lcom/narvii/catalog/picker/CatalogPickerFragment;

    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    const-string v3, "mode"

    .line 158
    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "mine"

    .line 159
    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 160
    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 p1, 0x23

    .line 161
    invoke-virtual {p0, v0, p1}, Lcom/narvii/app/NVActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_8
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 57
    invoke-super {p0, p1}, Lcom/narvii/blog/post/TopicPostActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0909be

    .line 58
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/NVScrollView;

    new-instance v0, Lcom/narvii/blog/post/PollPostActivity$1;

    invoke-direct {v0, p0}, Lcom/narvii/blog/post/PollPostActivity$1;-><init>(Lcom/narvii/blog/post/PollPostActivity;)V

    invoke-virtual {p1, v0}, Lcom/narvii/widget/NVScrollView;->setOnScrollListener(Lcom/narvii/widget/NVScrollView$OnScrollListener;)V

    const p1, 0x7f0908a6

    .line 64
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/blog/post/PollPostActivity;->header:Landroid/view/View;

    .line 65
    iget-object p1, p0, Lcom/narvii/blog/post/PollPostActivity;->header:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 66
    iget-object p1, p0, Lcom/narvii/blog/post/PollPostActivity;->header:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/narvii/blog/post/PollPostActivity;->root:Landroid/view/ViewGroup;

    .line 67
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    iget-object v1, p0, Lcom/narvii/blog/post/PollPostActivity;->root:Landroid/view/ViewGroup;

    const v2, 0x7f0b0594

    invoke-virtual {p1, v2, v1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f0908a3

    .line 68
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    iget-object v0, p0, Lcom/narvii/blog/post/PollPostActivity;->root:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/narvii/blog/post/PollPostActivity;->getOptionIndex()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 70
    new-instance p1, Landroid/animation/LayoutTransition;

    invoke-direct {p1}, Landroid/animation/LayoutTransition;-><init>()V

    .line 71
    new-instance v0, Lcom/narvii/blog/post/PollPostActivity$2;

    invoke-direct {v0, p0}, Lcom/narvii/blog/post/PollPostActivity$2;-><init>(Lcom/narvii/blog/post/PollPostActivity;)V

    invoke-virtual {p1, v0}, Landroid/animation/LayoutTransition;->addTransitionListener(Landroid/animation/LayoutTransition$TransitionListener;)V

    .line 89
    iget-object v0, p0, Lcom/narvii/blog/post/PollPostActivity;->root:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    return-void
.end method

.method protected onPickOtherMediaResult(Ljava/util/List;Landroid/os/Bundle;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/Media;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    if-eqz p2, :cond_2

    const-string v0, "pollopt"

    .line 168
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "index"

    .line 169
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    .line 170
    invoke-virtual {p0}, Lcom/narvii/blog/post/PollPostActivity;->savePost()Lcom/narvii/blog/post/BlogPost;

    move-result-object v0

    .line 171
    iget-object v1, v0, Lcom/narvii/blog/post/BlogPost;->polloptList:Ljava/util/List;

    if-nez v1, :cond_0

    .line 172
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/narvii/blog/post/BlogPost;->polloptList:Ljava/util/List;

    .line 174
    :cond_0
    :goto_0
    iget-object v1, v0, Lcom/narvii/blog/post/BlogPost;->polloptList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v2, p2, 0x1

    if-ge v1, v2, :cond_1

    .line 175
    iget-object v1, v0, Lcom/narvii/blog/post/BlogPost;->polloptList:Ljava/util/List;

    invoke-virtual {p0}, Lcom/narvii/blog/post/PollPostActivity;->newPollOption()Lcom/narvii/model/PollOption;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 177
    :cond_1
    iget-object v1, v0, Lcom/narvii/blog/post/BlogPost;->polloptList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/model/PollOption;

    iput-object p1, p2, Lcom/narvii/model/PollOption;->mediaList:Ljava/util/List;

    .line 178
    invoke-virtual {p0, v0}, Lcom/narvii/blog/post/PollPostActivity;->updateView(Lcom/narvii/blog/post/BlogPost;)V

    goto :goto_1

    .line 180
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/narvii/blog/post/TopicPostActivity;->onPickOtherMediaResult(Ljava/util/List;Landroid/os/Bundle;)V

    :goto_1
    return-void
.end method

.method public onPostFinished(Lcom/narvii/post/PostHelper;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0

    .line 426
    invoke-super {p0, p1, p2}, Lcom/narvii/blog/post/TopicPostActivity;->onPostFinished(Lcom/narvii/post/PostHelper;Lcom/narvii/model/api/ApiResponse;)V

    return-void
.end method

.method protected onPostLoaded(Lcom/narvii/blog/post/BlogPost;)V
    .locals 0

    .line 94
    invoke-super {p0, p1}, Lcom/narvii/blog/post/TopicPostActivity;->onPostLoaded(Lcom/narvii/blog/post/BlogPost;)V

    .line 95
    invoke-virtual {p0}, Lcom/narvii/blog/post/TopicPostActivity;->isEdit()Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x7f0f03cd

    .line 96
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(I)V

    goto :goto_0

    :cond_0
    const p1, 0x7f0f0ddb

    .line 98
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(I)V

    :goto_0
    return-void
.end method

.method protected bridge synthetic onPostLoaded(Lcom/narvii/post/PostObject;)V
    .locals 0

    .line 41
    check-cast p1, Lcom/narvii/blog/post/BlogPost;

    invoke-virtual {p0, p1}, Lcom/narvii/blog/post/PollPostActivity;->onPostLoaded(Lcom/narvii/blog/post/BlogPost;)V

    return-void
.end method

.method polloptType()I
    .locals 4

    .line 103
    iget-object v0, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    check-cast v0, Lcom/narvii/blog/post/BlogPost;

    iget-object v0, v0, Lcom/narvii/feed/BackgroundPost;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    :goto_0
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "pollSettings"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "polloptType"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->nodeInt(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected savePost()Lcom/narvii/blog/post/BlogPost;
    .locals 7

    .line 331
    invoke-super {p0}, Lcom/narvii/blog/post/TopicPostActivity;->savePost()Lcom/narvii/blog/post/BlogPost;

    move-result-object v0

    const/4 v1, 0x4

    .line 332
    iput v1, v0, Lcom/narvii/blog/post/BlogPost;->type:I

    .line 334
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 335
    invoke-virtual {p0}, Lcom/narvii/blog/post/PollPostActivity;->getOptionIndex()I

    move-result v2

    .line 336
    iget-object v3, p0, Lcom/narvii/blog/post/PollPostActivity;->root:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    :goto_0
    if-ge v2, v3, :cond_2

    .line 337
    iget-object v4, p0, Lcom/narvii/blog/post/PollPostActivity;->root:Landroid/view/ViewGroup;

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 338
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v5

    const v6, 0x7f0908a7

    if-ne v5, v6, :cond_1

    .line 339
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/narvii/model/PollOption;

    if-nez v5, :cond_0

    .line 341
    invoke-virtual {p0}, Lcom/narvii/blog/post/PollPostActivity;->newPollOption()Lcom/narvii/model/PollOption;

    move-result-object v5

    :cond_0
    const v6, 0x7f09085b

    .line 343
    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v5, Lcom/narvii/model/PollOption;->title:Ljava/lang/String;

    .line 344
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 348
    :cond_2
    iput-object v1, v0, Lcom/narvii/blog/post/BlogPost;->polloptList:Ljava/util/List;

    return-object v0
.end method

.method protected bridge synthetic savePost()Lcom/narvii/post/PostObject;
    .locals 1

    .line 41
    invoke-virtual {p0}, Lcom/narvii/blog/post/PollPostActivity;->savePost()Lcom/narvii/blog/post/BlogPost;

    move-result-object v0

    return-object v0
.end method

.method trimEmptyOptions(Ljava/util/List;Z)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/PollOption;",
            ">;Z)I"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 300
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p1, v1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p1

    .line 301
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 302
    invoke-interface {p1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/PollOption;

    .line 303
    invoke-virtual {v1}, Lcom/narvii/model/PollOption;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 304
    invoke-interface {p1}, Ljava/util/ListIterator;->remove()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_0

    :cond_2
    return v0
.end method

.method updateOptions(Ljava/util/List;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/PollOption;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    .line 221
    :cond_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v3

    .line 223
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/blog/post/PollPostActivity;->getOptionIndex()I

    move-result v4

    .line 224
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    .line 225
    iget-object v6, v0, Lcom/narvii/blog/post/PollPostActivity;->root:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    :goto_1
    if-ge v4, v6, :cond_1

    .line 226
    iget-object v7, v0, Lcom/narvii/blog/post/PollPostActivity;->root:Landroid/view/ViewGroup;

    invoke-virtual {v7, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 227
    invoke-virtual {v7}, Landroid/view/View;->getId()I

    move-result v8

    const v9, 0x7f0908a7

    if-ne v8, v9, :cond_1

    .line 228
    invoke-virtual {v5, v7}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 234
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/blog/post/PollPostActivity;->polloptType()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2

    const v8, 0x7f0b0595

    goto :goto_2

    :cond_2
    const v8, 0x7f0b0596

    .line 236
    :goto_2
    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v9

    const v10, 0x7f09085a

    const v11, 0x7f09085b

    const/4 v12, 0x2

    if-lt v9, v12, :cond_f

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v9

    if-ge v9, v3, :cond_3

    goto/16 :goto_d

    :cond_3
    :goto_3
    if-le v3, v12, :cond_4

    .line 248
    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v4

    if-le v4, v3, :cond_4

    .line 249
    iget-object v4, v0, Lcom/narvii/blog/post/PollPostActivity;->root:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_3

    :cond_4
    const/4 v4, 0x0

    :goto_4
    if-lt v4, v3, :cond_6

    if-ge v4, v12, :cond_5

    goto :goto_5

    .line 273
    :cond_5
    invoke-direct/range {p0 .. p1}, Lcom/narvii/blog/post/PollPostActivity;->updateAddOptionView(Ljava/util/List;)V

    return-void

    .line 253
    :cond_6
    :goto_5
    invoke-virtual {v5, v4}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    if-ge v4, v3, :cond_7

    .line 254
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/narvii/model/PollOption;

    goto :goto_6

    :cond_7
    const/4 v13, 0x0

    .line 255
    :goto_6
    invoke-virtual {v8, v13}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const v14, 0x7f09058d

    .line 256
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v8, v14, v15}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    const v14, 0x7f0f0dd8

    if-nez v6, :cond_a

    .line 258
    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Lcom/narvii/widget/NVImageView;

    if-nez v13, :cond_8

    const/4 v9, 0x0

    goto :goto_7

    :cond_8
    invoke-virtual {v13}, Lcom/narvii/model/PollOption;->firstMedia()Lcom/narvii/model/Media;

    move-result-object v16

    move-object/from16 v9, v16

    :goto_7
    invoke-virtual {v15, v9}, Lcom/narvii/widget/NVImageView;->setImageMedia(Lcom/narvii/model/Media;)Z

    .line 259
    invoke-virtual {v8, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    new-array v9, v7, [Ljava/lang/Object;

    add-int/lit8 v15, v4, 0x1

    .line 260
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v9, v2

    invoke-virtual {v0, v14, v9}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    if-nez v13, :cond_9

    const/4 v9, 0x0

    goto :goto_8

    .line 261
    :cond_9
    iget-object v9, v13, Lcom/narvii/model/PollOption;->title:Ljava/lang/String;

    .line 262
    :goto_8
    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v13

    invoke-interface {v13}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13, v9}, Lcom/narvii/util/Utils;->isStringEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_e

    .line 263
    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_c

    :cond_a
    if-ne v6, v7, :cond_e

    const v9, 0x7f090858

    .line 266
    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/narvii/widget/CardView;

    if-nez v13, :cond_b

    const/4 v15, 0x0

    goto :goto_9

    .line 267
    :cond_b
    iget-object v15, v13, Lcom/narvii/model/PollOption;->refObject:Lcom/narvii/model/Feed;

    check-cast v15, Lcom/narvii/model/Item;

    :goto_9
    invoke-virtual {v9, v15}, Lcom/narvii/widget/CardView;->setItem(Lcom/narvii/model/Item;)V

    .line 268
    invoke-virtual {v8, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    new-array v9, v7, [Ljava/lang/Object;

    add-int/lit8 v15, v4, 0x1

    .line 269
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v9, v2

    invoke-virtual {v0, v14, v9}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    if-eqz v13, :cond_d

    .line 270
    iget-object v9, v13, Lcom/narvii/model/PollOption;->refObject:Lcom/narvii/model/Feed;

    if-nez v9, :cond_c

    goto :goto_a

    :cond_c
    invoke-virtual {v9}, Lcom/narvii/model/Feed;->title()Ljava/lang/String;

    move-result-object v9

    goto :goto_b

    :cond_d
    :goto_a
    const/4 v9, 0x0

    :goto_b
    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_e
    :goto_c
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_4

    .line 237
    :cond_f
    :goto_d
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v9

    iget-object v12, v0, Lcom/narvii/blog/post/PollPostActivity;->root:Landroid/view/ViewGroup;

    invoke-virtual {v9, v8, v12, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    if-nez v6, :cond_10

    .line 239
    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 240
    new-instance v10, Lcom/narvii/blog/post/PollPostActivity$EditHelper;

    invoke-virtual {v9, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/EditText;

    const v12, 0x7f0908a4

    invoke-virtual {v9, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    invoke-direct {v10, v0, v11, v12}, Lcom/narvii/blog/post/PollPostActivity$EditHelper;-><init>(Lcom/narvii/blog/post/PollPostActivity;Landroid/widget/EditText;Landroid/widget/TextView;)V

    goto :goto_e

    :cond_10
    if-ne v6, v7, :cond_11

    const v10, 0x7f090859

    .line 242
    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_11
    :goto_e
    const v10, 0x7f09033c

    .line 244
    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 245
    invoke-virtual {v5, v9}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 246
    iget-object v10, v0, Lcom/narvii/blog/post/PollPostActivity;->root:Landroid/view/ViewGroup;

    add-int/lit8 v11, v4, 0x1

    invoke-virtual {v10, v9, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    move v4, v11

    goto/16 :goto_2
.end method

.method protected updateView(Lcom/narvii/blog/post/BlogPost;)V
    .locals 2

    .line 208
    invoke-super {p0, p1}, Lcom/narvii/blog/post/TopicPostActivity;->updateView(Lcom/narvii/blog/post/BlogPost;)V

    .line 210
    iget-object v0, p0, Lcom/narvii/blog/post/PollPostActivity;->root:Landroid/view/ViewGroup;

    const v1, 0x7f090b9a

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0f0ddc

    .line 211
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHint(I)V

    .line 212
    iget-object v0, p0, Lcom/narvii/blog/post/PollPostActivity;->root:Landroid/view/ViewGroup;

    const v1, 0x7f0902d0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0f0dd4

    .line 213
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHint(I)V

    .line 215
    iget-object v0, p0, Lcom/narvii/blog/post/PollPostActivity;->root:Landroid/view/ViewGroup;

    const v1, 0x7f09086e

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 217
    iget-object p1, p1, Lcom/narvii/blog/post/BlogPost;->polloptList:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/narvii/blog/post/PollPostActivity;->updateOptions(Ljava/util/List;)V

    return-void
.end method

.method protected bridge synthetic updateView(Lcom/narvii/feed/BackgroundPost;)V
    .locals 0

    .line 41
    check-cast p1, Lcom/narvii/blog/post/BlogPost;

    invoke-virtual {p0, p1}, Lcom/narvii/blog/post/PollPostActivity;->updateView(Lcom/narvii/blog/post/BlogPost;)V

    return-void
.end method

.method protected bridge synthetic updateView(Lcom/narvii/post/PostObject;)V
    .locals 0

    .line 41
    check-cast p1, Lcom/narvii/blog/post/BlogPost;

    invoke-virtual {p0, p1}, Lcom/narvii/blog/post/PollPostActivity;->updateView(Lcom/narvii/blog/post/BlogPost;)V

    return-void
.end method

.method protected validateUpload(Lcom/narvii/blog/post/BlogPost;)Z
    .locals 6

    .line 355
    invoke-super {p0, p1}, Lcom/narvii/blog/post/TopicPostActivity;->validateUpload(Lcom/narvii/blog/post/BlogPost;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 362
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 363
    iget-object p1, p1, Lcom/narvii/blog/post/BlogPost;->polloptList:Ljava/util/List;

    if-eqz p1, :cond_1

    .line 364
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 366
    :cond_1
    invoke-virtual {p0, v0, v1}, Lcom/narvii/blog/post/PollPostActivity;->trimEmptyOptions(Ljava/util/List;Z)I

    .line 367
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ge p1, v2, :cond_2

    const/4 p1, 0x1

    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x0

    goto :goto_2

    .line 369
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v2, 0x5

    if-le p1, v2, :cond_3

    const/4 p1, 0x0

    const/4 v0, 0x1

    goto :goto_0

    .line 372
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v2, 0x0

    :cond_4
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/narvii/model/PollOption;

    .line 373
    invoke-virtual {v4}, Lcom/narvii/model/PollOption;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_1

    .line 376
    :cond_5
    invoke-virtual {p0, v0, v4}, Lcom/narvii/blog/post/PollPostActivity;->hasDuplicateOptions(Ljava/util/List;Lcom/narvii/model/PollOption;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v2, 0x1

    goto :goto_1

    :cond_6
    const/4 p1, 0x0

    const/4 v0, 0x0

    :goto_2
    if-nez p1, :cond_8

    if-nez v0, :cond_8

    if-eqz v2, :cond_7

    goto :goto_3

    :cond_7
    return v3

    .line 383
    :cond_8
    :goto_3
    new-instance v2, Lcom/narvii/util/dialog/AlertDialog;

    invoke-direct {v2, p0}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    if-eqz p1, :cond_9

    const p1, 0x7f0f0d72

    .line 385
    invoke-virtual {v2, p1}, Landroid/app/Dialog;->setTitle(I)V

    goto :goto_4

    :cond_9
    if-eqz v0, :cond_a

    const p1, 0x7f0f0d73

    .line 387
    invoke-virtual {v2, p1}, Landroid/app/Dialog;->setTitle(I)V

    goto :goto_4

    :cond_a
    const p1, 0x7f0f0d70

    .line 389
    invoke-virtual {v2, p1}, Landroid/app/Dialog;->setTitle(I)V

    :goto_4
    const p1, 0x104000a

    const/4 v0, 0x0

    .line 391
    invoke-virtual {v2, p1, v1, v0}, Lcom/narvii/util/dialog/AlertDialog;->addButton(IILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 392
    invoke-virtual {v2}, Lcom/narvii/app/NVDialog;->show()V

    return v1
.end method

.method protected bridge synthetic validateUpload(Lcom/narvii/post/PostObject;)Z
    .locals 0

    .line 41
    check-cast p1, Lcom/narvii/blog/post/BlogPost;

    invoke-virtual {p0, p1}, Lcom/narvii/blog/post/PollPostActivity;->validateUpload(Lcom/narvii/blog/post/BlogPost;)Z

    move-result p1

    return p1
.end method
