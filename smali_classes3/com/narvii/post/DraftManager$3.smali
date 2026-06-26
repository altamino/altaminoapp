.class Lcom/narvii/post/DraftManager$3;
.super Ljava/lang/Object;
.source "DraftManager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/post/DraftManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/narvii/post/DraftInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/post/DraftManager;


# direct methods
.method constructor <init>(Lcom/narvii/post/DraftManager;)V
    .locals 0

    .line 362
    iput-object p1, p0, Lcom/narvii/post/DraftManager$3;->this$0:Lcom/narvii/post/DraftManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/narvii/post/DraftInfo;Lcom/narvii/post/DraftInfo;)I
    .locals 3

    .line 365
    iget-wide v0, p2, Lcom/narvii/post/DraftInfo;->createdTime:J

    iget-wide p1, p1, Lcom/narvii/post/DraftInfo;->createdTime:J

    sub-long/2addr v0, p1

    const-wide/16 p1, 0x0

    cmp-long v2, v0, p1

    if-nez v2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    cmp-long v2, v0, p1

    if-gez v2, :cond_1

    const/4 p1, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    :goto_0
    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 362
    check-cast p1, Lcom/narvii/post/DraftInfo;

    check-cast p2, Lcom/narvii/post/DraftInfo;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/post/DraftManager$3;->compare(Lcom/narvii/post/DraftInfo;Lcom/narvii/post/DraftInfo;)I

    move-result p1

    return p1
.end method
