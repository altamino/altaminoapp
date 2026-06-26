.class final Lcom/narvii/model/PollOption$1;
.super Ljava/lang/Object;
.source "PollOption.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/model/PollOption;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/narvii/model/PollOption;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/narvii/model/PollOption;Lcom/narvii/model/PollOption;)I
    .locals 2

    .line 113
    iget v0, p2, Lcom/narvii/model/PollOption;->votesCount:I

    iget v1, p1, Lcom/narvii/model/PollOption;->votesCount:I

    sub-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 115
    iget p2, p2, Lcom/narvii/model/PollOption;->votesSum:I

    iget p1, p1, Lcom/narvii/model/PollOption;->votesSum:I

    sub-int v0, p2, p1

    :cond_0
    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 110
    check-cast p1, Lcom/narvii/model/PollOption;

    check-cast p2, Lcom/narvii/model/PollOption;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/model/PollOption$1;->compare(Lcom/narvii/model/PollOption;Lcom/narvii/model/PollOption;)I

    move-result p1

    return p1
.end method
