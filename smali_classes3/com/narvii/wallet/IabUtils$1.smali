.class final Lcom/narvii/wallet/IabUtils$1;
.super Ljava/lang/Object;
.source "IabUtils.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/wallet/IabUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/narvii/wallet/util/Purchase;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/narvii/wallet/util/Purchase;Lcom/narvii/wallet/util/Purchase;)I
    .locals 3

    .line 96
    invoke-virtual {p2}, Lcom/narvii/wallet/util/Purchase;->getPurchaseTime()J

    move-result-wide v0

    .line 97
    invoke-virtual {p1}, Lcom/narvii/wallet/util/Purchase;->getPurchaseTime()J

    move-result-wide p1

    cmp-long v2, v0, p1

    if-gez v2, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    cmp-long v2, v0, p1

    if-nez v2, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    :goto_0
    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 93
    check-cast p1, Lcom/narvii/wallet/util/Purchase;

    check-cast p2, Lcom/narvii/wallet/util/Purchase;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/wallet/IabUtils$1;->compare(Lcom/narvii/wallet/util/Purchase;Lcom/narvii/wallet/util/Purchase;)I

    move-result p1

    return p1
.end method
