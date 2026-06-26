.class final Lcom/narvii/comment/list/CommentListFragment$4;
.super Ljava/lang/Object;
.source "CommentListFragment.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/comment/list/CommentListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/narvii/model/Comment;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 666
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/narvii/model/Comment;Lcom/narvii/model/Comment;)I
    .locals 4

    .line 669
    iget v0, p1, Lcom/narvii/model/Comment;->votesSum:I

    iget v1, p2, Lcom/narvii/model/Comment;->votesSum:I

    if-ne v0, v1, :cond_4

    .line 670
    iget-object p1, p1, Lcom/narvii/model/Comment;->modifiedTime:Ljava/util/Date;

    const-wide/16 v0, 0x0

    if-nez p1, :cond_0

    move-wide v2, v0

    goto :goto_0

    .line 671
    :cond_0
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 672
    :goto_0
    iget-object p1, p2, Lcom/narvii/model/Comment;->modifiedTime:Ljava/util/Date;

    if-nez p1, :cond_1

    move-wide p1, v0

    goto :goto_1

    .line 673
    :cond_1
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide p1

    :goto_1
    sub-long/2addr p1, v2

    cmp-long v2, p1, v0

    if-lez v2, :cond_2

    const/4 p1, 0x1

    goto :goto_2

    :cond_2
    cmp-long v2, p1, v0

    if-gez v2, :cond_3

    const/4 p1, -0x1

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    :goto_2
    return p1

    :cond_4
    sub-int/2addr v1, v0

    return v1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 666
    check-cast p1, Lcom/narvii/model/Comment;

    check-cast p2, Lcom/narvii/model/Comment;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/comment/list/CommentListFragment$4;->compare(Lcom/narvii/model/Comment;Lcom/narvii/model/Comment;)I

    move-result p1

    return p1
.end method
