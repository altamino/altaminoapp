.class final Lcom/narvii/util/PackageUtils$1;
.super Ljava/lang/Object;
.source "PackageUtils.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/util/PackageUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/narvii/util/PackageUtils$AminoPackage;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 486
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/narvii/util/PackageUtils$AminoPackage;Lcom/narvii/util/PackageUtils$AminoPackage;)I
    .locals 2

    .line 489
    iget v0, p1, Lcom/narvii/util/PackageUtils$AminoPackage;->communityId:I

    iget v1, p2, Lcom/narvii/util/PackageUtils$AminoPackage;->communityId:I

    sub-int/2addr v0, v1

    if-nez v0, :cond_3

    .line 491
    iget p1, p1, Lcom/narvii/util/PackageUtils$AminoPackage;->appId:I

    if-nez p1, :cond_1

    .line 492
    iget p1, p2, Lcom/narvii/util/PackageUtils$AminoPackage;->appId:I

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1

    .line 493
    :cond_1
    iget p2, p2, Lcom/narvii/util/PackageUtils$AminoPackage;->appId:I

    if-nez p2, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    sub-int/2addr p2, p1

    return p2

    :cond_3
    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 486
    check-cast p1, Lcom/narvii/util/PackageUtils$AminoPackage;

    check-cast p2, Lcom/narvii/util/PackageUtils$AminoPackage;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/util/PackageUtils$1;->compare(Lcom/narvii/util/PackageUtils$AminoPackage;Lcom/narvii/util/PackageUtils$AminoPackage;)I

    move-result p1

    return p1
.end method
