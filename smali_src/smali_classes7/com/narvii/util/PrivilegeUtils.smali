.class public Lcom/narvii/util/PrivilegeUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static visibleToUser(Lcom/narvii/modulization/entry/Privilege;Lcom/narvii/model/User;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-eqz p0, :cond_3

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    goto :goto_0

    .line 7
    .line 8
    :cond_0
    iget p0, p0, Lcom/narvii/modulization/entry/Privilege;->type:I

    .line 9
    const/4 v1, 0x1

    .line 10
    .line 11
    if-eq p0, v1, :cond_2

    .line 12
    const/4 v2, 0x2

    .line 13
    .line 14
    if-eq p0, v2, :cond_2

    .line 15
    const/4 v1, 0x3

    .line 16
    .line 17
    if-eq p0, v1, :cond_1

    .line 18
    return v0

    .line 19
    .line 20
    .line 21
    :cond_1
    invoke-virtual {p1}, Lcom/narvii/model/User;->isCurator()Z

    .line 22
    move-result p0

    .line 23
    return p0

    .line 24
    :cond_2
    return v1

    .line 25
    :cond_3
    :goto_0
    return v0
.end method
