.class Lcom/narvii/comment/CommentDetailFragment$ViewAllCommentAdapter;
.super Lcom/narvii/list/NVAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/comment/CommentDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewAllCommentAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/comment/CommentDetailFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/comment/CommentDetailFragment;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/comment/CommentDetailFragment$ViewAllCommentAdapter;->this$0:Lcom/narvii/comment/CommentDetailFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/narvii/list/NVAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    return-void
.end method

.method private parentId()Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/comment/CommentDetailFragment$ViewAllCommentAdapter;->this$0:Lcom/narvii/comment/CommentDetailFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/comment/CommentDetailFragment;->y(Lcom/narvii/comment/CommentDetailFragment;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method private parentType()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/comment/CommentDetailFragment$ViewAllCommentAdapter;->this$0:Lcom/narvii/comment/CommentDetailFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/comment/CommentDetailFragment;->B(Lcom/narvii/comment/CommentDetailFragment;)I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public static safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Lcom/narvii/list/NVAdapter;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/comment/CommentDetailFragment$ViewAllCommentAdapter;->this$0:Lcom/narvii/comment/CommentDetailFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/comment/CommentDetailFragment;->K(Lcom/narvii/comment/CommentDetailFragment;)Z

    .line 6
    move-result v0

    .line 7
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

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 1
    .line 2
    .line 3
    const p1, 0x7f0d0104

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    iget-object p2, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    return-object p1
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 2

    .line 1
    .line 2
    if-eqz p5, :cond_1

    .line 3
    .line 4
    .line 5
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    .line 6
    move-result v0

    .line 7
    .line 8
    .line 9
    const v1, 0x7f0a0fbb

    .line 10
    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    goto :goto_0

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 16
    move-result p1

    .line 17
    return p1

    .line 18
    .line 19
    :cond_1
    :goto_0
    new-instance p1, Lcom/narvii/comment/list/CommentListFragment$IntentBuilder;

    .line 20
    .line 21
    .line 22
    invoke-direct {p1}, Lcom/narvii/comment/list/CommentListFragment$IntentBuilder;-><init>()V

    .line 23
    .line 24
    iget-object p2, p0, Lcom/narvii/comment/CommentDetailFragment$ViewAllCommentAdapter;->this$0:Lcom/narvii/comment/CommentDetailFragment;

    .line 25
    .line 26
    .line 27
    invoke-static {p2}, Lcom/narvii/comment/CommentDetailFragment;->z(Lcom/narvii/comment/CommentDetailFragment;)Lcom/narvii/model/NVObject;

    .line 28
    move-result-object p2

    .line 29
    .line 30
    instance-of p2, p2, Lcom/narvii/model/SharedFile;

    .line 31
    .line 32
    if-eqz p2, :cond_2

    .line 33
    .line 34
    iget-object p2, p0, Lcom/narvii/comment/CommentDetailFragment$ViewAllCommentAdapter;->this$0:Lcom/narvii/comment/CommentDetailFragment;

    .line 35
    .line 36
    .line 37
    invoke-static {p2}, Lcom/narvii/comment/CommentDetailFragment;->z(Lcom/narvii/comment/CommentDetailFragment;)Lcom/narvii/model/NVObject;

    .line 38
    move-result-object p2

    .line 39
    .line 40
    check-cast p2, Lcom/narvii/model/SharedFile;

    .line 41
    .line 42
    iget-object p2, p2, Lcom/narvii/model/SharedFile;->media:Lcom/narvii/model/Media;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, p2}, Lcom/narvii/comment/list/CommentListFragment$IntentBuilder;->background(Lcom/narvii/model/Media;)Lcom/narvii/comment/list/CommentListFragment$IntentBuilder;

    .line 46
    move-result-object p2

    .line 47
    .line 48
    const-string p3, "shared-folder-image"

    .line 49
    .line 50
    .line 51
    invoke-virtual {p2, p3}, Lcom/narvii/comment/list/CommentListFragment$IntentBuilder;->backgroundType(Ljava/lang/String;)Lcom/narvii/comment/list/CommentListFragment$IntentBuilder;

    .line 52
    .line 53
    :cond_2
    iget-object p2, p0, Lcom/narvii/comment/CommentDetailFragment$ViewAllCommentAdapter;->this$0:Lcom/narvii/comment/CommentDetailFragment;

    .line 54
    .line 55
    .line 56
    invoke-static {p2}, Lcom/narvii/comment/CommentDetailFragment;->w(Lcom/narvii/comment/CommentDetailFragment;)Z

    .line 57
    move-result p2

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1, p2}, Lcom/narvii/comment/list/CommentListFragment$IntentBuilder;->isQuestion(Z)Lcom/narvii/comment/list/CommentListFragment$IntentBuilder;

    .line 61
    move-result-object p1

    .line 62
    .line 63
    .line 64
    invoke-direct {p0}, Lcom/narvii/comment/CommentDetailFragment$ViewAllCommentAdapter;->parentType()I

    .line 65
    move-result p2

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1, p2}, Lcom/narvii/comment/list/CommentListFragment$IntentBuilder;->parentType(I)Lcom/narvii/comment/list/CommentListFragment$IntentBuilder;

    .line 69
    move-result-object p1

    .line 70
    .line 71
    .line 72
    invoke-direct {p0}, Lcom/narvii/comment/CommentDetailFragment$ViewAllCommentAdapter;->parentId()Ljava/lang/String;

    .line 73
    move-result-object p2

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1, p2}, Lcom/narvii/comment/list/CommentListFragment$IntentBuilder;->parentId(Ljava/lang/String;)Lcom/narvii/comment/list/CommentListFragment$IntentBuilder;

    .line 77
    move-result-object p1

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1}, Lcom/narvii/comment/list/CommentListFragment$IntentBuilder;->build()Landroid/content/Intent;

    .line 81
    move-result-object p1

    .line 82
    .line 83
    .line 84
    invoke-static {p0, p1}, Lcom/narvii/comment/CommentDetailFragment$ViewAllCommentAdapter;->safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V

    .line 85
    const/4 p1, 0x1

    .line 86
    return p1
.end method
