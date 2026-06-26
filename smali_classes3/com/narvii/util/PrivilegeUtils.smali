.class public Lcom/narvii/util/PrivilegeUtils;
.super Ljava/lang/Object;
.source "PrivilegeUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static visibleToUser(Lcom/narvii/modulization/entry/Privilege;Lcom/narvii/model/User;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    if-nez p1, :cond_0

    goto :goto_0

    .line 16
    :cond_0
    iget p0, p0, Lcom/narvii/modulization/entry/Privilege;->type:I

    const/4 v1, 0x1

    if-eq p0, v1, :cond_2

    const/4 v2, 0x2

    if-eq p0, v2, :cond_2

    const/4 v1, 0x3

    if-eq p0, v1, :cond_1

    return v0

    .line 21
    :cond_1
    invoke-virtual {p1}, Lcom/narvii/model/User;->isCurator()Z

    move-result p0

    return p0

    :cond_2
    return v1

    :cond_3
    :goto_0
    return v0
.end method
