.class Lcom/narvii/comment/list/CommentListFragment$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/comment/list/CommentListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public compare(Lcom/narvii/model/Comment;Lcom/narvii/model/Comment;)I
    .locals 4

    .line 2
    iget v0, p1, Lcom/narvii/model/Comment;->votesSum:I

    iget v1, p2, Lcom/narvii/model/Comment;->votesSum:I

    if-ne v0, v1, :cond_4

    .line 3
    iget-object p1, p1, Lcom/narvii/model/Comment;->modifiedTime:Ljava/util/Date;

    const-wide/16 v0, 0x0

    if-nez p1, :cond_0

    move-wide v2, v0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 5
    :goto_0
    iget-object p1, p2, Lcom/narvii/model/Comment;->modifiedTime:Ljava/util/Date;

    if-nez p1, :cond_1

    move-wide p1, v0

    goto :goto_1

    .line 6
    :cond_1
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide p1

    :goto_1
    sub-long/2addr p1, v2

    cmp-long p1, p1, v0

    if-lez p1, :cond_2

    const/4 p1, 0x1

    goto :goto_2

    :cond_2
    if-gez p1, :cond_3

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

    .line 1
    check-cast p1, Lcom/narvii/model/Comment;

    check-cast p2, Lcom/narvii/model/Comment;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/comment/list/CommentListFragment$4;->compare(Lcom/narvii/model/Comment;Lcom/narvii/model/Comment;)I

    move-result p1

    return p1
.end method
