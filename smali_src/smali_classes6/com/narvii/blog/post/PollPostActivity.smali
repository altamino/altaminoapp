.class public Lcom/narvii/blog/post/PollPostActivity;
.super Lcom/narvii/blog/post/TopicPostActivity;
.source "SourceFile"


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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/blog/post/TopicPostActivity;-><init>()V

    .line 4
    return-void
.end method

.method static synthetic access$000(Lcom/narvii/blog/post/PollPostActivity;)Lcom/narvii/post/PostObject;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    .line 3
    return-object p0
.end method

.method static synthetic access$100(Lcom/narvii/blog/post/PollPostActivity;)Lcom/narvii/post/PostObject;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    .line 3
    return-object p0
.end method

.method static synthetic access$200(Lcom/narvii/blog/post/PollPostActivity;)Lcom/narvii/post/PostObject;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    .line 3
    return-object p0
.end method

.method private requestFocus()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/blog/post/PollPostActivity;->root:Landroid/view/ViewGroup;

    .line 3
    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 8
    move-result v0

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    goto :goto_1

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/narvii/blog/post/PollPostActivity;->root:Landroid/view/ViewGroup;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 17
    move-result v0

    .line 18
    .line 19
    add-int/lit8 v0, v0, -0x1

    .line 20
    .line 21
    :goto_0
    if-ltz v0, :cond_2

    .line 22
    .line 23
    iget-object v1, p0, Lcom/narvii/blog/post/PollPostActivity;->root:Landroid/view/ViewGroup;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 27
    move-result-object v1

    .line 28
    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    .line 33
    move-result v2

    .line 34
    .line 35
    .line 36
    const v3, 0x7f0a0b64

    .line 37
    .line 38
    if-ne v2, v3, :cond_1

    .line 39
    .line 40
    .line 41
    const v0, 0x7f0a0b11

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 45
    move-result-object v0

    .line 46
    .line 47
    check-cast v0, Landroid/widget/TextView;

    .line 48
    .line 49
    instance-of v1, v0, Landroid/widget/EditText;

    .line 50
    .line 51
    if-eqz v1, :cond_2

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 55
    goto :goto_1

    .line 56
    .line 57
    :cond_1
    add-int/lit8 v0, v0, -0x1

    .line 58
    goto :goto_0

    .line 59
    :cond_2
    :goto_1
    return-void
.end method

.method public static safedk_NVActivity_startActivityForResult_3bd852b2ea6021d0a4ba255e76a86115(Lcom/narvii/app/NVActivity;Landroid/content/Intent;I)V
    .locals 1
    .param p0, "p0"    # Lcom/narvii/app/NVActivity;
    .param p1, "p1"    # Landroid/content/Intent;
    .param p2, "p2"    # I

    const-string v0, "SafeDK-Special|SafeDK: Call> Lcom/narvii/app/NVActivity;->startActivityForResult(Landroid/content/Intent;I)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/narvii/app/NVActivity;->startActivityForResult(Landroid/content/Intent;I)V

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

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/blog/post/PollPostActivity;->root:Landroid/view/ViewGroup;

    .line 3
    .line 4
    if-eqz v0, :cond_3

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_3

    .line 11
    .line 12
    if-eqz p1, :cond_3

    .line 13
    .line 14
    .line 15
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 16
    move-result v0

    .line 17
    .line 18
    if-nez v0, :cond_0

    .line 19
    goto :goto_2

    .line 20
    .line 21
    :cond_0
    iget-object v0, p0, Lcom/narvii/blog/post/PollPostActivity;->root:Landroid/view/ViewGroup;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 25
    move-result v0

    .line 26
    .line 27
    add-int/lit8 v0, v0, -0x1

    .line 28
    .line 29
    :goto_0
    if-ltz v0, :cond_3

    .line 30
    .line 31
    iget-object v1, p0, Lcom/narvii/blog/post/PollPostActivity;->root:Landroid/view/ViewGroup;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 35
    move-result-object v1

    .line 36
    .line 37
    if-eqz v1, :cond_2

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    .line 41
    move-result v2

    .line 42
    .line 43
    .line 44
    const v3, 0x7f0a0b60

    .line 45
    .line 46
    if-ne v2, v3, :cond_2

    .line 47
    .line 48
    .line 49
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 50
    move-result v2

    .line 51
    const/4 v3, 0x5

    .line 52
    .line 53
    if-lt v2, v3, :cond_1

    .line 54
    .line 55
    .line 56
    const v2, 0x3e99999a    # 0.3f

    .line 57
    goto :goto_1

    .line 58
    .line 59
    :cond_1
    const/high16 v2, 0x3f800000    # 1.0f

    .line 60
    .line 61
    .line 62
    :goto_1
    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 63
    .line 64
    :cond_2
    add-int/lit8 v0, v0, -0x1

    .line 65
    goto :goto_0

    .line 66
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

    .line 1
    .line 2
    const-string v0, "blog"

    .line 3
    .line 4
    const-string v1, "poll"

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0, v1}, Lcom/narvii/post/BasePostActivity;->checkEligible(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    return-void
.end method

.method closeAllSwipeToDelete(Z)V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/blog/post/PollPostActivity;->root:Landroid/view/ViewGroup;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    move v2, v1

    .line 9
    .line 10
    :goto_0
    if-ge v2, v0, :cond_1

    .line 11
    .line 12
    iget-object v3, p0, Lcom/narvii/blog/post/PollPostActivity;->root:Landroid/view/ViewGroup;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 16
    move-result-object v3

    .line 17
    .line 18
    instance-of v4, v3, Lcom/narvii/widget/SwipeToDeleteLayout;

    .line 19
    .line 20
    if-eqz v4, :cond_0

    .line 21
    .line 22
    check-cast v3, Lcom/narvii/widget/SwipeToDeleteLayout;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v3, v1, p1}, Lcom/narvii/widget/SwipeToDeleteLayout;->setSwipeRight(ZZ)V

    .line 26
    .line 27
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    return-void
.end method

.method protected doPost(Lcom/narvii/blog/post/BlogPost;)V
    .locals 2

    .line 2
    iget-object v0, p1, Lcom/narvii/blog/post/BlogPost;->polloptList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/narvii/blog/post/BlogPost;->polloptList:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v0, v1}, Lcom/narvii/blog/post/PollPostActivity;->trimEmptyOptions(Ljava/util/List;Z)I

    move-result v1

    if-lez v1, :cond_0

    .line 5
    iput-object v0, p1, Lcom/narvii/blog/post/BlogPost;->polloptList:Ljava/util/List;

    .line 6
    :cond_0
    invoke-super {p0, p1}, Lcom/narvii/blog/post/TopicPostActivity;->doPost(Lcom/narvii/blog/post/BlogPost;)V

    return-void
.end method

.method protected bridge synthetic doPost(Lcom/narvii/post/PostObject;)V
    .locals 0

    .line 1
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

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    const/4 v1, 0x4

    .line 3
    .line 4
    if-ge v0, v1, :cond_2

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 8
    move-result v1

    .line 9
    .line 10
    .line 11
    const v2, 0x7f0a0b64

    .line 12
    .line 13
    if-ne v1, v2, :cond_0

    .line 14
    return-object p1

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 18
    move-result-object v1

    .line 19
    .line 20
    instance-of v1, v1, Landroid/view/ViewGroup;

    .line 21
    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 26
    move-result-object p1

    .line 27
    .line 28
    check-cast p1, Landroid/view/View;

    .line 29
    .line 30
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 31
    goto :goto_0

    .line 32
    :cond_2
    const/4 p1, 0x0

    .line 33
    return-object p1
.end method

.method getOptionIndex()I
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/blog/post/PollPostActivity;->root:Landroid/view/ViewGroup;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    move v2, v1

    .line 9
    .line 10
    :goto_0
    if-ge v2, v0, :cond_1

    .line 11
    .line 12
    iget-object v3, p0, Lcom/narvii/blog/post/PollPostActivity;->root:Landroid/view/ViewGroup;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 16
    move-result-object v3

    .line 17
    .line 18
    iget-object v4, p0, Lcom/narvii/blog/post/PollPostActivity;->header:Landroid/view/View;

    .line 19
    .line 20
    if-ne v3, v4, :cond_0

    .line 21
    .line 22
    add-int/lit8 v2, v2, 0x1

    .line 23
    return v2

    .line 24
    .line 25
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 26
    goto :goto_0

    .line 27
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

    .line 1
    .line 2
    iget-object v0, p2, Lcom/narvii/model/PollOption;->title:Ljava/lang/String;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_0

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x0

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    return v1

    .line 19
    .line 20
    .line 21
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 22
    move-result-object p1

    .line 23
    .line 24
    .line 25
    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    move-result v0

    .line 27
    .line 28
    if-eqz v0, :cond_4

    .line 29
    .line 30
    .line 31
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    check-cast v0, Lcom/narvii/model/PollOption;

    .line 35
    .line 36
    if-ne v0, p2, :cond_3

    .line 37
    goto :goto_1

    .line 38
    .line 39
    .line 40
    :cond_3
    invoke-virtual {v0, p2}, Lcom/narvii/model/PollOption;->isDuplicate(Lcom/narvii/model/PollOption;)Z

    .line 41
    move-result v0

    .line 42
    .line 43
    if-eqz v0, :cond_2

    .line 44
    const/4 p1, 0x1

    .line 45
    return p1

    .line 46
    :cond_4
    return v1
.end method

.method newPollOption()Lcom/narvii/model/PollOption;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/model/PollOption;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/narvii/model/PollOption;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/narvii/blog/post/PollPostActivity;->polloptType()I

    .line 9
    move-result v1

    .line 10
    .line 11
    iput v1, v0, Lcom/narvii/model/PollOption;->type:I

    .line 12
    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/blog/post/TopicPostActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 4
    .line 5
    const/16 v0, 0x23

    .line 6
    .line 7
    if-ne p1, v0, :cond_2

    .line 8
    const/4 p1, -0x1

    .line 9
    .line 10
    if-ne p2, p1, :cond_2

    .line 11
    .line 12
    if-eqz p3, :cond_2

    .line 13
    .line 14
    const-string p1, "item"

    .line 15
    .line 16
    .line 17
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    move-result-object p1

    .line 19
    .line 20
    const-class p2, Lcom/narvii/model/Item;

    .line 21
    .line 22
    .line 23
    invoke-static {p1, p2}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 24
    move-result-object p1

    .line 25
    .line 26
    check-cast p1, Lcom/narvii/model/Item;

    .line 27
    .line 28
    const-string p2, "index"

    .line 29
    const/4 v0, 0x0

    .line 30
    .line 31
    .line 32
    invoke-virtual {p3, p2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 33
    move-result p2

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/narvii/blog/post/PollPostActivity;->savePost()Lcom/narvii/blog/post/BlogPost;

    .line 37
    move-result-object p3

    .line 38
    .line 39
    iget-object v0, p3, Lcom/narvii/blog/post/BlogPost;->polloptList:Ljava/util/List;

    .line 40
    .line 41
    if-nez v0, :cond_0

    .line 42
    .line 43
    new-instance v0, Ljava/util/ArrayList;

    .line 44
    .line 45
    .line 46
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 47
    .line 48
    iput-object v0, p3, Lcom/narvii/blog/post/BlogPost;->polloptList:Ljava/util/List;

    .line 49
    .line 50
    :cond_0
    :goto_0
    iget-object v0, p3, Lcom/narvii/blog/post/BlogPost;->polloptList:Ljava/util/List;

    .line 51
    .line 52
    .line 53
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 54
    move-result v0

    .line 55
    .line 56
    add-int/lit8 v1, p2, 0x1

    .line 57
    .line 58
    if-ge v0, v1, :cond_1

    .line 59
    .line 60
    iget-object v0, p3, Lcom/narvii/blog/post/BlogPost;->polloptList:Ljava/util/List;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0}, Lcom/narvii/blog/post/PollPostActivity;->newPollOption()Lcom/narvii/model/PollOption;

    .line 64
    move-result-object v1

    .line 65
    .line 66
    .line 67
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    goto :goto_0

    .line 69
    .line 70
    .line 71
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/blog/post/PollPostActivity;->newPollOption()Lcom/narvii/model/PollOption;

    .line 72
    move-result-object v0

    .line 73
    .line 74
    iput-object p1, v0, Lcom/narvii/model/PollOption;->refObject:Lcom/narvii/model/Feed;

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1}, Lcom/narvii/model/Item;->id()Ljava/lang/String;

    .line 78
    move-result-object v1

    .line 79
    .line 80
    iput-object v1, v0, Lcom/narvii/model/PollOption;->refObjectId:Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1}, Lcom/narvii/model/Item;->objectType()I

    .line 84
    move-result p1

    .line 85
    .line 86
    iput p1, v0, Lcom/narvii/model/PollOption;->refObjectType:I

    .line 87
    .line 88
    iget-object p1, p3, Lcom/narvii/blog/post/BlogPost;->polloptList:Ljava/util/List;

    .line 89
    .line 90
    .line 91
    invoke-interface {p1, p2, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0, p3}, Lcom/narvii/blog/post/PollPostActivity;->updateView(Lcom/narvii/blog/post/BlogPost;)V

    .line 95
    :cond_2
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/blog/post/TopicPostActivity;->onClick(Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 7
    move-result v0

    .line 8
    .line 9
    .line 10
    const v1, 0x7f0a0b10

    .line 11
    .line 12
    .line 13
    const v2, 0x7f0a0714

    .line 14
    .line 15
    const-string v3, "index"

    .line 16
    const/4 v4, 0x0

    .line 17
    const/4 v5, 0x1

    .line 18
    .line 19
    if-ne v0, v1, :cond_2

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, p1}, Lcom/narvii/blog/post/PollPostActivity;->getOptionCell(Landroid/view/View;)Landroid/view/View;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 27
    move-result-object v1

    .line 28
    .line 29
    check-cast v1, Lcom/narvii/model/PollOption;

    .line 30
    .line 31
    new-instance v6, Landroid/os/Bundle;

    .line 32
    .line 33
    .line 34
    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 35
    .line 36
    const-string v7, "pollopt"

    .line 37
    .line 38
    .line 39
    invoke-virtual {v6, v7, v5}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 43
    move-result-object v0

    .line 44
    .line 45
    check-cast v0, Ljava/lang/Integer;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 49
    move-result v0

    .line 50
    .line 51
    .line 52
    invoke-virtual {v6, v3, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 53
    .line 54
    if-eqz v1, :cond_0

    .line 55
    .line 56
    iget-object v0, v1, Lcom/narvii/model/PollOption;->mediaList:Ljava/util/List;

    .line 57
    .line 58
    if-eqz v0, :cond_0

    .line 59
    .line 60
    .line 61
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 62
    move-result v0

    .line 63
    .line 64
    if-lez v0, :cond_0

    .line 65
    move v0, v5

    .line 66
    goto :goto_0

    .line 67
    :cond_0
    move v0, v4

    .line 68
    .line 69
    :goto_0
    iget-object v1, p0, Lcom/narvii/post/BasePostActivity;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    .line 70
    .line 71
    iget-object v7, p0, Lcom/narvii/post/DraftPostActivity;->draftManager:Lcom/narvii/post/DraftManager;

    .line 72
    .line 73
    iget-object v8, p0, Lcom/narvii/post/DraftPostActivity;->draftId:Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v7, v8}, Lcom/narvii/post/DraftManager;->getDir(Ljava/lang/String;)Ljava/io/File;

    .line 77
    move-result-object v7

    .line 78
    .line 79
    if-eqz v0, :cond_1

    .line 80
    .line 81
    const/16 v0, 0x40

    .line 82
    goto :goto_1

    .line 83
    :cond_1
    move v0, v4

    .line 84
    .line 85
    :goto_1
    or-int/lit8 v0, v0, 0x4

    .line 86
    .line 87
    .line 88
    invoke-virtual {v1, v7, v6, v0}, Lcom/narvii/media/MediaPickerFragment;->pickMedia(Ljava/io/File;Landroid/os/Bundle;I)V

    .line 89
    .line 90
    .line 91
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 92
    move-result v0

    .line 93
    .line 94
    .line 95
    const v1, 0x7f0a0417

    .line 96
    .line 97
    if-ne v0, v1, :cond_3

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0, p1}, Lcom/narvii/blog/post/PollPostActivity;->getOptionCell(Landroid/view/View;)Landroid/view/View;

    .line 101
    move-result-object v0

    .line 102
    move-object v1, v0

    .line 103
    .line 104
    check-cast v1, Lcom/narvii/widget/SwipeToDeleteLayout;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v1, v4, v5}, Lcom/narvii/widget/SwipeToDeleteLayout;->setSwipeRight(ZZ)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 111
    move-result-object v1

    .line 112
    .line 113
    check-cast v1, Landroid/view/ViewGroup;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 117
    .line 118
    .line 119
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 120
    move-result v0

    .line 121
    .line 122
    .line 123
    const v1, 0x7f0a0b60

    .line 124
    .line 125
    if-ne v0, v1, :cond_7

    .line 126
    .line 127
    .line 128
    invoke-virtual {p0}, Lcom/narvii/blog/post/PollPostActivity;->savePost()Lcom/narvii/blog/post/BlogPost;

    .line 129
    move-result-object v0

    .line 130
    .line 131
    iget-object v1, v0, Lcom/narvii/blog/post/BlogPost;->polloptList:Ljava/util/List;

    .line 132
    .line 133
    if-eqz v1, :cond_4

    .line 134
    .line 135
    .line 136
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 137
    move-result v1

    .line 138
    const/4 v6, 0x5

    .line 139
    .line 140
    if-lt v1, v6, :cond_4

    .line 141
    .line 142
    new-instance v0, Lcom/narvii/util/dialog/AlertDialog;

    .line 143
    .line 144
    .line 145
    invoke-direct {v0, p0}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 146
    .line 147
    .line 148
    const v1, 0x7f120e9f

    .line 149
    .line 150
    .line 151
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setTitle(I)V

    .line 152
    .line 153
    .line 154
    const v1, 0x104000a

    .line 155
    const/4 v6, 0x0

    .line 156
    .line 157
    .line 158
    invoke-virtual {v0, v1, v4, v6}, Lcom/narvii/util/dialog/AlertDialog;->addButton(IILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    .line 162
    goto :goto_3

    .line 163
    .line 164
    :cond_4
    iget-object v1, v0, Lcom/narvii/blog/post/BlogPost;->polloptList:Ljava/util/List;

    .line 165
    .line 166
    if-nez v1, :cond_5

    .line 167
    .line 168
    new-instance v1, Ljava/util/ArrayList;

    .line 169
    .line 170
    .line 171
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 172
    .line 173
    iput-object v1, v0, Lcom/narvii/blog/post/BlogPost;->polloptList:Ljava/util/List;

    .line 174
    .line 175
    :cond_5
    :goto_2
    iget-object v1, v0, Lcom/narvii/blog/post/BlogPost;->polloptList:Ljava/util/List;

    .line 176
    .line 177
    .line 178
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 179
    move-result v1

    .line 180
    const/4 v4, 0x2

    .line 181
    .line 182
    if-ge v1, v4, :cond_6

    .line 183
    .line 184
    iget-object v1, v0, Lcom/narvii/blog/post/BlogPost;->polloptList:Ljava/util/List;

    .line 185
    .line 186
    .line 187
    invoke-virtual {p0}, Lcom/narvii/blog/post/PollPostActivity;->newPollOption()Lcom/narvii/model/PollOption;

    .line 188
    move-result-object v4

    .line 189
    .line 190
    .line 191
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    goto :goto_2

    .line 193
    .line 194
    :cond_6
    iget-object v1, v0, Lcom/narvii/blog/post/BlogPost;->polloptList:Ljava/util/List;

    .line 195
    .line 196
    .line 197
    invoke-virtual {p0}, Lcom/narvii/blog/post/PollPostActivity;->newPollOption()Lcom/narvii/model/PollOption;

    .line 198
    move-result-object v4

    .line 199
    .line 200
    .line 201
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    .line 203
    .line 204
    invoke-virtual {p0, v0}, Lcom/narvii/blog/post/PollPostActivity;->updateView(Lcom/narvii/blog/post/BlogPost;)V

    .line 205
    .line 206
    .line 207
    invoke-direct {p0}, Lcom/narvii/blog/post/PollPostActivity;->requestFocus()V

    .line 208
    .line 209
    .line 210
    :cond_7
    :goto_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 211
    move-result v0

    .line 212
    .line 213
    .line 214
    const v1, 0x7f0a0b0f

    .line 215
    .line 216
    if-ne v0, v1, :cond_8

    .line 217
    .line 218
    .line 219
    invoke-virtual {p0, p1}, Lcom/narvii/blog/post/PollPostActivity;->getOptionCell(Landroid/view/View;)Landroid/view/View;

    .line 220
    move-result-object p1

    .line 221
    .line 222
    const-class v0, Lcom/narvii/catalog/picker/CatalogPickerFragment;

    .line 223
    .line 224
    .line 225
    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 226
    move-result-object v0

    .line 227
    .line 228
    const-string v1, "mode"

    .line 229
    .line 230
    .line 231
    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 232
    .line 233
    const-string v1, "mine"

    .line 234
    .line 235
    .line 236
    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 237
    .line 238
    .line 239
    invoke-virtual {p1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 240
    move-result-object p1

    .line 241
    .line 242
    check-cast p1, Ljava/lang/Integer;

    .line 243
    .line 244
    .line 245
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 246
    move-result p1

    .line 247
    .line 248
    .line 249
    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 250
    .line 251
    const/16 p1, 0x23

    .line 252
    .line 253
    .line 254
    invoke-static {p0, v0, p1}, Lcom/narvii/blog/post/PollPostActivity;->safedk_NVActivity_startActivityForResult_3bd852b2ea6021d0a4ba255e76a86115(Lcom/narvii/app/NVActivity;Landroid/content/Intent;I)V

    .line 255
    :cond_8
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Lcom/narvii/app/theme/NVThemeActivity;->setShouldInflateAd(Z)V

    .line 5
    .line 6
    .line 7
    invoke-super {p0, p1}, Lcom/narvii/blog/post/TopicPostActivity;->onCreate(Landroid/os/Bundle;)V

    .line 8
    .line 9
    .line 10
    const p1, 0x7f0a0c87

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    check-cast p1, Lcom/narvii/widget/NVScrollView;

    .line 17
    .line 18
    new-instance v0, Lcom/narvii/blog/post/PollPostActivity$1;

    .line 19
    .line 20
    .line 21
    invoke-direct {v0, p0}, Lcom/narvii/blog/post/PollPostActivity$1;-><init>(Lcom/narvii/blog/post/PollPostActivity;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v0}, Lcom/narvii/widget/NVScrollView;->setOnScrollListener(Lcom/narvii/widget/NVScrollView$OnScrollListener;)V

    .line 25
    .line 26
    .line 27
    const p1, 0x7f0a0b63

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 31
    move-result-object p1

    .line 32
    .line 33
    iput-object p1, p0, Lcom/narvii/blog/post/PollPostActivity;->header:Landroid/view/View;

    .line 34
    const/4 v0, 0x0

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 38
    .line 39
    iget-object p1, p0, Lcom/narvii/blog/post/PollPostActivity;->header:Landroid/view/View;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 43
    move-result-object p1

    .line 44
    .line 45
    check-cast p1, Landroid/view/ViewGroup;

    .line 46
    .line 47
    iput-object p1, p0, Lcom/narvii/blog/post/PollPostActivity;->root:Landroid/view/ViewGroup;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 51
    move-result-object p1

    .line 52
    .line 53
    .line 54
    const v1, 0x7f0d063c

    .line 55
    .line 56
    iget-object v2, p0, Lcom/narvii/blog/post/PollPostActivity;->root:Landroid/view/ViewGroup;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 60
    move-result-object p1

    .line 61
    .line 62
    .line 63
    const v0, 0x7f0a0b60

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 67
    move-result-object v0

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    .line 72
    iget-object v0, p0, Lcom/narvii/blog/post/PollPostActivity;->root:Landroid/view/ViewGroup;

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0}, Lcom/narvii/blog/post/PollPostActivity;->getOptionIndex()I

    .line 76
    move-result v1

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 80
    .line 81
    new-instance p1, Landroid/animation/LayoutTransition;

    .line 82
    .line 83
    .line 84
    invoke-direct {p1}, Landroid/animation/LayoutTransition;-><init>()V

    .line 85
    .line 86
    new-instance v0, Lcom/narvii/blog/post/PollPostActivity$2;

    .line 87
    .line 88
    .line 89
    invoke-direct {v0, p0}, Lcom/narvii/blog/post/PollPostActivity$2;-><init>(Lcom/narvii/blog/post/PollPostActivity;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1, v0}, Landroid/animation/LayoutTransition;->addTransitionListener(Landroid/animation/LayoutTransition$TransitionListener;)V

    .line 93
    .line 94
    iget-object v0, p0, Lcom/narvii/blog/post/PollPostActivity;->root:Landroid/view/ViewGroup;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 98
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

    .line 1
    .line 2
    if-eqz p2, :cond_2

    .line 3
    .line 4
    const-string v0, "pollopt"

    .line 5
    .line 6
    .line 7
    invoke-virtual {p2, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_2

    .line 11
    .line 12
    const-string v0, "index"

    .line 13
    .line 14
    .line 15
    invoke-virtual {p2, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 16
    move-result p2

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/narvii/blog/post/PollPostActivity;->savePost()Lcom/narvii/blog/post/BlogPost;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    iget-object v1, v0, Lcom/narvii/blog/post/BlogPost;->polloptList:Ljava/util/List;

    .line 23
    .line 24
    if-nez v1, :cond_0

    .line 25
    .line 26
    new-instance v1, Ljava/util/ArrayList;

    .line 27
    .line 28
    .line 29
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 30
    .line 31
    iput-object v1, v0, Lcom/narvii/blog/post/BlogPost;->polloptList:Ljava/util/List;

    .line 32
    .line 33
    :cond_0
    :goto_0
    iget-object v1, v0, Lcom/narvii/blog/post/BlogPost;->polloptList:Ljava/util/List;

    .line 34
    .line 35
    .line 36
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 37
    move-result v1

    .line 38
    .line 39
    add-int/lit8 v2, p2, 0x1

    .line 40
    .line 41
    if-ge v1, v2, :cond_1

    .line 42
    .line 43
    iget-object v1, v0, Lcom/narvii/blog/post/BlogPost;->polloptList:Ljava/util/List;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Lcom/narvii/blog/post/PollPostActivity;->newPollOption()Lcom/narvii/model/PollOption;

    .line 47
    move-result-object v2

    .line 48
    .line 49
    .line 50
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    goto :goto_0

    .line 52
    .line 53
    :cond_1
    iget-object v1, v0, Lcom/narvii/blog/post/BlogPost;->polloptList:Ljava/util/List;

    .line 54
    .line 55
    .line 56
    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 57
    move-result-object p2

    .line 58
    .line 59
    check-cast p2, Lcom/narvii/model/PollOption;

    .line 60
    .line 61
    iput-object p1, p2, Lcom/narvii/model/PollOption;->mediaList:Ljava/util/List;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0, v0}, Lcom/narvii/blog/post/PollPostActivity;->updateView(Lcom/narvii/blog/post/BlogPost;)V

    .line 65
    goto :goto_1

    .line 66
    .line 67
    .line 68
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/narvii/blog/post/TopicPostActivity;->onPickOtherMediaResult(Ljava/util/List;Landroid/os/Bundle;)V

    .line 69
    :goto_1
    return-void
.end method

.method public onPostFinished(Lcom/narvii/post/PostHelper;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/blog/post/TopicPostActivity;->onPostFinished(Lcom/narvii/post/PostHelper;Lcom/narvii/model/api/ApiResponse;)V

    .line 4
    return-void
.end method

.method protected onPostLoaded(Lcom/narvii/blog/post/BlogPost;)V
    .locals 0

    .line 2
    invoke-super {p0, p1}, Lcom/narvii/blog/post/TopicPostActivity;->onPostLoaded(Lcom/narvii/blog/post/BlogPost;)V

    .line 3
    invoke-virtual {p0}, Lcom/narvii/blog/post/TopicPostActivity;->isEdit()Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x7f120438

    .line 4
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(I)V

    goto :goto_0

    :cond_0
    const p1, 0x7f120f06

    .line 5
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(I)V

    :goto_0
    return-void
.end method

.method protected bridge synthetic onPostLoaded(Lcom/narvii/post/PostObject;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/narvii/blog/post/BlogPost;

    invoke-virtual {p0, p1}, Lcom/narvii/blog/post/PollPostActivity;->onPostLoaded(Lcom/narvii/blog/post/BlogPost;)V

    return-void
.end method

.method polloptType()I
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_0

    .line 7
    .line 8
    :cond_0
    check-cast v0, Lcom/narvii/blog/post/BlogPost;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/narvii/feed/BackgroundPost;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 11
    .line 12
    :goto_0
    const-string v1, "pollSettings"

    .line 13
    .line 14
    const-string v2, "polloptType"

    .line 15
    .line 16
    .line 17
    filled-new-array {v1, v2}, [Ljava/lang/String;

    .line 18
    move-result-object v1

    .line 19
    .line 20
    .line 21
    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->nodeInt(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)I

    .line 22
    move-result v0

    .line 23
    return v0
.end method

.method protected savePost()Lcom/narvii/blog/post/BlogPost;
    .locals 7

    .line 2
    invoke-super {p0}, Lcom/narvii/blog/post/TopicPostActivity;->savePost()Lcom/narvii/blog/post/BlogPost;

    move-result-object v0

    const/4 v1, 0x4

    .line 3
    iput v1, v0, Lcom/narvii/blog/post/BlogPost;->type:I

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5
    invoke-virtual {p0}, Lcom/narvii/blog/post/PollPostActivity;->getOptionIndex()I

    move-result v2

    iget-object v3, p0, Lcom/narvii/blog/post/PollPostActivity;->root:Landroid/view/ViewGroup;

    .line 6
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    :goto_0
    if-ge v2, v3, :cond_2

    iget-object v4, p0, Lcom/narvii/blog/post/PollPostActivity;->root:Landroid/view/ViewGroup;

    .line 7
    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 8
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v5

    const v6, 0x7f0a0b64

    if-ne v5, v6, :cond_1

    .line 9
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/narvii/model/PollOption;

    if-nez v5, :cond_0

    .line 10
    invoke-virtual {p0}, Lcom/narvii/blog/post/PollPostActivity;->newPollOption()Lcom/narvii/model/PollOption;

    move-result-object v5

    :cond_0
    const v6, 0x7f0a0b11

    .line 11
    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v5, Lcom/narvii/model/PollOption;->title:Ljava/lang/String;

    .line 12
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 13
    :cond_2
    iput-object v1, v0, Lcom/narvii/blog/post/BlogPost;->polloptList:Ljava/util/List;

    return-object v0
.end method

.method protected bridge synthetic savePost()Lcom/narvii/post/PostObject;
    .locals 1

    .line 1
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

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-eqz p1, :cond_2

    .line 4
    .line 5
    .line 6
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 7
    move-result v1

    .line 8
    .line 9
    .line 10
    invoke-interface {p1, v1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    .line 14
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/ListIterator;->hasPrevious()Z

    .line 15
    move-result v1

    .line 16
    .line 17
    if-eqz v1, :cond_2

    .line 18
    .line 19
    .line 20
    invoke-interface {p1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 21
    move-result-object v1

    .line 22
    .line 23
    check-cast v1, Lcom/narvii/model/PollOption;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Lcom/narvii/model/PollOption;->isEmpty()Z

    .line 27
    move-result v1

    .line 28
    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    .line 32
    invoke-interface {p1}, Ljava/util/ListIterator;->remove()V

    .line 33
    .line 34
    add-int/lit8 v0, v0, 0x1

    .line 35
    goto :goto_0

    .line 36
    .line 37
    :cond_1
    if-eqz p2, :cond_0

    .line 38
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

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v1, p1

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    move v3, v2

    .line 9
    goto :goto_0

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    .line 13
    move-result v3

    .line 14
    .line 15
    .line 16
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/blog/post/PollPostActivity;->getOptionIndex()I

    .line 17
    move-result v4

    .line 18
    .line 19
    new-instance v5, Ljava/util/LinkedList;

    .line 20
    .line 21
    .line 22
    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    .line 23
    .line 24
    iget-object v6, v0, Lcom/narvii/blog/post/PollPostActivity;->root:Landroid/view/ViewGroup;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    .line 28
    move-result v6

    .line 29
    .line 30
    :goto_1
    if-ge v4, v6, :cond_1

    .line 31
    .line 32
    iget-object v7, v0, Lcom/narvii/blog/post/PollPostActivity;->root:Landroid/view/ViewGroup;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v7, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 36
    move-result-object v7

    .line 37
    .line 38
    .line 39
    invoke-virtual {v7}, Landroid/view/View;->getId()I

    .line 40
    move-result v8

    .line 41
    .line 42
    .line 43
    const v9, 0x7f0a0b64

    .line 44
    .line 45
    if-ne v8, v9, :cond_1

    .line 46
    .line 47
    .line 48
    invoke-virtual {v5, v7}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 49
    .line 50
    add-int/lit8 v4, v4, 0x1

    .line 51
    goto :goto_1

    .line 52
    .line 53
    .line 54
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/blog/post/PollPostActivity;->polloptType()I

    .line 55
    move-result v6

    .line 56
    const/4 v7, 0x1

    .line 57
    .line 58
    if-ne v6, v7, :cond_2

    .line 59
    .line 60
    .line 61
    const v8, 0x7f0d063d

    .line 62
    goto :goto_2

    .line 63
    .line 64
    .line 65
    :cond_2
    const v8, 0x7f0d063e

    .line 66
    .line 67
    .line 68
    :goto_2
    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    .line 69
    move-result v9

    .line 70
    .line 71
    .line 72
    const v10, 0x7f0a0b10

    .line 73
    .line 74
    .line 75
    const v11, 0x7f0a0b11

    .line 76
    const/4 v12, 0x2

    .line 77
    .line 78
    if-lt v9, v12, :cond_f

    .line 79
    .line 80
    .line 81
    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    .line 82
    move-result v9

    .line 83
    .line 84
    if-ge v9, v3, :cond_3

    .line 85
    .line 86
    goto/16 :goto_d

    .line 87
    .line 88
    :cond_3
    :goto_3
    if-le v3, v12, :cond_4

    .line 89
    .line 90
    .line 91
    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    .line 92
    move-result v4

    .line 93
    .line 94
    if-le v4, v3, :cond_4

    .line 95
    .line 96
    iget-object v4, v0, Lcom/narvii/blog/post/PollPostActivity;->root:Landroid/view/ViewGroup;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v5}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    .line 100
    move-result-object v8

    .line 101
    .line 102
    check-cast v8, Landroid/view/View;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v4, v8}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 106
    goto :goto_3

    .line 107
    :cond_4
    move v4, v2

    .line 108
    .line 109
    :goto_4
    if-lt v4, v3, :cond_6

    .line 110
    .line 111
    if-ge v4, v12, :cond_5

    .line 112
    goto :goto_5

    .line 113
    .line 114
    .line 115
    :cond_5
    invoke-direct/range {p0 .. p1}, Lcom/narvii/blog/post/PollPostActivity;->updateAddOptionView(Ljava/util/List;)V

    .line 116
    return-void

    .line 117
    .line 118
    .line 119
    :cond_6
    :goto_5
    invoke-virtual {v5, v4}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    .line 120
    move-result-object v8

    .line 121
    .line 122
    check-cast v8, Landroid/view/View;

    .line 123
    .line 124
    if-ge v4, v3, :cond_7

    .line 125
    .line 126
    .line 127
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 128
    move-result-object v13

    .line 129
    .line 130
    check-cast v13, Lcom/narvii/model/PollOption;

    .line 131
    goto :goto_6

    .line 132
    :cond_7
    const/4 v13, 0x0

    .line 133
    .line 134
    .line 135
    :goto_6
    invoke-virtual {v8, v13}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 136
    .line 137
    .line 138
    const v14, 0x7f0a0714

    .line 139
    .line 140
    .line 141
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 142
    move-result-object v15

    .line 143
    .line 144
    .line 145
    invoke-virtual {v8, v14, v15}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 146
    .line 147
    .line 148
    const v14, 0x7f120f03

    .line 149
    .line 150
    if-nez v6, :cond_a

    .line 151
    .line 152
    .line 153
    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 154
    move-result-object v15

    .line 155
    .line 156
    check-cast v15, Lcom/narvii/widget/NVImageView;

    .line 157
    .line 158
    if-nez v13, :cond_8

    .line 159
    const/4 v9, 0x0

    .line 160
    goto :goto_7

    .line 161
    .line 162
    .line 163
    :cond_8
    invoke-virtual {v13}, Lcom/narvii/model/PollOption;->firstMedia()Lcom/narvii/model/Media;

    .line 164
    move-result-object v16

    .line 165
    .line 166
    move-object/from16 v9, v16

    .line 167
    .line 168
    .line 169
    :goto_7
    invoke-virtual {v15, v9}, Lcom/narvii/widget/NVImageView;->setImageMedia(Lcom/narvii/model/Media;)Z

    .line 170
    .line 171
    .line 172
    invoke-virtual {v8, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 173
    move-result-object v8

    .line 174
    .line 175
    check-cast v8, Landroid/widget/TextView;

    .line 176
    .line 177
    new-array v9, v7, [Ljava/lang/Object;

    .line 178
    .line 179
    add-int/lit8 v15, v4, 0x1

    .line 180
    .line 181
    .line 182
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 183
    move-result-object v15

    .line 184
    .line 185
    aput-object v15, v9, v2

    .line 186
    .line 187
    .line 188
    invoke-virtual {v0, v14, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 189
    move-result-object v9

    .line 190
    .line 191
    .line 192
    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 193
    .line 194
    if-nez v13, :cond_9

    .line 195
    const/4 v9, 0x0

    .line 196
    goto :goto_8

    .line 197
    .line 198
    :cond_9
    iget-object v9, v13, Lcom/narvii/model/PollOption;->title:Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    :goto_8
    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 202
    move-result-object v13

    .line 203
    .line 204
    .line 205
    invoke-interface {v13}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 206
    move-result-object v13

    .line 207
    .line 208
    .line 209
    invoke-static {v13, v9}, Lcom/narvii/util/Utils;->isStringEquals(Ljava/lang/String;Ljava/lang/String;)Z

    .line 210
    move-result v13

    .line 211
    .line 212
    if-nez v13, :cond_e

    .line 213
    .line 214
    .line 215
    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    goto :goto_c

    .line 217
    .line 218
    :cond_a
    if-ne v6, v7, :cond_e

    .line 219
    .line 220
    .line 221
    const v9, 0x7f0a0b0e

    .line 222
    .line 223
    .line 224
    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 225
    move-result-object v9

    .line 226
    .line 227
    check-cast v9, Lcom/narvii/widget/CardView;

    .line 228
    .line 229
    if-nez v13, :cond_b

    .line 230
    const/4 v15, 0x0

    .line 231
    goto :goto_9

    .line 232
    .line 233
    :cond_b
    iget-object v15, v13, Lcom/narvii/model/PollOption;->refObject:Lcom/narvii/model/Feed;

    .line 234
    .line 235
    check-cast v15, Lcom/narvii/model/Item;

    .line 236
    .line 237
    .line 238
    :goto_9
    invoke-virtual {v9, v15}, Lcom/narvii/widget/CardView;->setItem(Lcom/narvii/model/Item;)V

    .line 239
    .line 240
    .line 241
    invoke-virtual {v8, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 242
    move-result-object v8

    .line 243
    .line 244
    check-cast v8, Landroid/widget/TextView;

    .line 245
    .line 246
    new-array v9, v7, [Ljava/lang/Object;

    .line 247
    .line 248
    add-int/lit8 v15, v4, 0x1

    .line 249
    .line 250
    .line 251
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 252
    move-result-object v15

    .line 253
    .line 254
    aput-object v15, v9, v2

    .line 255
    .line 256
    .line 257
    invoke-virtual {v0, v14, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 258
    move-result-object v9

    .line 259
    .line 260
    .line 261
    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 262
    .line 263
    if-eqz v13, :cond_d

    .line 264
    .line 265
    iget-object v9, v13, Lcom/narvii/model/PollOption;->refObject:Lcom/narvii/model/Feed;

    .line 266
    .line 267
    if-nez v9, :cond_c

    .line 268
    goto :goto_a

    .line 269
    .line 270
    .line 271
    :cond_c
    invoke-virtual {v9}, Lcom/narvii/model/Feed;->title()Ljava/lang/String;

    .line 272
    move-result-object v9

    .line 273
    goto :goto_b

    .line 274
    :cond_d
    :goto_a
    const/4 v9, 0x0

    .line 275
    .line 276
    .line 277
    :goto_b
    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 278
    .line 279
    :cond_e
    :goto_c
    add-int/lit8 v4, v4, 0x1

    .line 280
    .line 281
    goto/16 :goto_4

    .line 282
    .line 283
    .line 284
    :cond_f
    :goto_d
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 285
    move-result-object v9

    .line 286
    .line 287
    iget-object v12, v0, Lcom/narvii/blog/post/PollPostActivity;->root:Landroid/view/ViewGroup;

    .line 288
    .line 289
    .line 290
    invoke-virtual {v9, v8, v12, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 291
    move-result-object v9

    .line 292
    .line 293
    if-nez v6, :cond_10

    .line 294
    .line 295
    .line 296
    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 297
    move-result-object v10

    .line 298
    .line 299
    .line 300
    invoke-virtual {v10, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 301
    .line 302
    new-instance v10, Lcom/narvii/blog/post/PollPostActivity$EditHelper;

    .line 303
    .line 304
    .line 305
    invoke-virtual {v9, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 306
    move-result-object v11

    .line 307
    .line 308
    check-cast v11, Landroid/widget/EditText;

    .line 309
    .line 310
    .line 311
    const v12, 0x7f0a0b61

    .line 312
    .line 313
    .line 314
    invoke-virtual {v9, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 315
    move-result-object v12

    .line 316
    .line 317
    check-cast v12, Landroid/widget/TextView;

    .line 318
    .line 319
    .line 320
    invoke-direct {v10, v0, v11, v12}, Lcom/narvii/blog/post/PollPostActivity$EditHelper;-><init>(Lcom/narvii/blog/post/PollPostActivity;Landroid/widget/EditText;Landroid/widget/TextView;)V

    .line 321
    goto :goto_e

    .line 322
    .line 323
    :cond_10
    if-ne v6, v7, :cond_11

    .line 324
    .line 325
    .line 326
    const v10, 0x7f0a0b0f

    .line 327
    .line 328
    .line 329
    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 330
    move-result-object v10

    .line 331
    .line 332
    .line 333
    invoke-virtual {v10, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 334
    .line 335
    .line 336
    :cond_11
    :goto_e
    const v10, 0x7f0a0417

    .line 337
    .line 338
    .line 339
    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 340
    move-result-object v10

    .line 341
    .line 342
    .line 343
    invoke-virtual {v10, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 344
    .line 345
    .line 346
    invoke-virtual {v5, v9}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 347
    .line 348
    iget-object v10, v0, Lcom/narvii/blog/post/PollPostActivity;->root:Landroid/view/ViewGroup;

    .line 349
    .line 350
    add-int/lit8 v11, v4, 0x1

    .line 351
    .line 352
    .line 353
    invoke-virtual {v10, v9, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 354
    move v4, v11

    .line 355
    .line 356
    goto/16 :goto_2
.end method

.method protected updateView(Lcom/narvii/blog/post/BlogPost;)V
    .locals 2

    .line 3
    invoke-super {p0, p1}, Lcom/narvii/blog/post/TopicPostActivity;->updateView(Lcom/narvii/blog/post/BlogPost;)V

    iget-object v0, p0, Lcom/narvii/blog/post/PollPostActivity;->root:Landroid/view/ViewGroup;

    const v1, 0x7f0a0e9e

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f120f07

    .line 5
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHint(I)V

    iget-object v0, p0, Lcom/narvii/blog/post/PollPostActivity;->root:Landroid/view/ViewGroup;

    const v1, 0x7f0a039d

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f120eff

    .line 7
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHint(I)V

    iget-object v0, p0, Lcom/narvii/blog/post/PollPostActivity;->root:Landroid/view/ViewGroup;

    const v1, 0x7f0a0b2a

    .line 8
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 9
    iget-object p1, p1, Lcom/narvii/blog/post/BlogPost;->polloptList:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/narvii/blog/post/PollPostActivity;->updateOptions(Ljava/util/List;)V

    return-void
.end method

.method protected bridge synthetic updateView(Lcom/narvii/feed/BackgroundPost;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/narvii/blog/post/BlogPost;

    invoke-virtual {p0, p1}, Lcom/narvii/blog/post/PollPostActivity;->updateView(Lcom/narvii/blog/post/BlogPost;)V

    return-void
.end method

.method protected bridge synthetic updateView(Lcom/narvii/post/PostObject;)V
    .locals 0

    .line 2
    check-cast p1, Lcom/narvii/blog/post/BlogPost;

    invoke-virtual {p0, p1}, Lcom/narvii/blog/post/PollPostActivity;->updateView(Lcom/narvii/blog/post/BlogPost;)V

    return-void
.end method

.method protected validateUpload(Lcom/narvii/blog/post/BlogPost;)Z
    .locals 6

    .line 2
    invoke-super {p0, p1}, Lcom/narvii/blog/post/TopicPostActivity;->validateUpload(Lcom/narvii/blog/post/BlogPost;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 3
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    iget-object p1, p1, Lcom/narvii/blog/post/BlogPost;->polloptList:Ljava/util/List;

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 6
    :cond_1
    invoke-virtual {p0, v0, v1}, Lcom/narvii/blog/post/PollPostActivity;->trimEmptyOptions(Ljava/util/List;Z)I

    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ge p1, v2, :cond_2

    move v0, v1

    move v2, v0

    move p1, v3

    goto :goto_1

    .line 8
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v2, 0x5

    if-le p1, v2, :cond_3

    move p1, v1

    move v2, p1

    move v0, v3

    goto :goto_1

    .line 9
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move v2, v1

    :cond_4
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/narvii/model/PollOption;

    .line 10
    invoke-virtual {v4}, Lcom/narvii/model/PollOption;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_0

    .line 11
    :cond_5
    invoke-virtual {p0, v0, v4}, Lcom/narvii/blog/post/PollPostActivity;->hasDuplicateOptions(Ljava/util/List;Lcom/narvii/model/PollOption;)Z

    move-result v4

    if-eqz v4, :cond_4

    move v2, v3

    goto :goto_0

    :cond_6
    move p1, v1

    move v0, p1

    :goto_1
    if-nez p1, :cond_8

    if-nez v0, :cond_8

    if-eqz v2, :cond_7

    goto :goto_2

    :cond_7
    return v3

    .line 12
    :cond_8
    :goto_2
    new-instance v2, Lcom/narvii/util/dialog/AlertDialog;

    invoke-direct {v2, p0}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    if-eqz p1, :cond_9

    const p1, 0x7f120e9e

    .line 13
    invoke-virtual {v2, p1}, Landroid/app/Dialog;->setTitle(I)V

    goto :goto_3

    :cond_9
    if-eqz v0, :cond_a

    const p1, 0x7f120e9f

    .line 14
    invoke-virtual {v2, p1}, Landroid/app/Dialog;->setTitle(I)V

    goto :goto_3

    :cond_a
    const p1, 0x7f120e9c

    .line 15
    invoke-virtual {v2, p1}, Landroid/app/Dialog;->setTitle(I)V

    :goto_3
    const p1, 0x104000a

    const/4 v0, 0x0

    .line 16
    invoke-virtual {v2, p1, v1, v0}, Lcom/narvii/util/dialog/AlertDialog;->addButton(IILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 17
    invoke-virtual {v2}, Lcom/narvii/app/NVDialog;->show()V

    return v1
.end method

.method protected bridge synthetic validateUpload(Lcom/narvii/post/PostObject;)Z
    .locals 0

    .line 1
    check-cast p1, Lcom/narvii/blog/post/BlogPost;

    invoke-virtual {p0, p1}, Lcom/narvii/blog/post/PollPostActivity;->validateUpload(Lcom/narvii/blog/post/BlogPost;)Z

    move-result p1

    return p1
.end method
