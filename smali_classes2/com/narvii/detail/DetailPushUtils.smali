.class public Lcom/narvii/detail/DetailPushUtils;
.super Ljava/lang/Object;
.source "DetailPushUtils.java"


# static fields
.field public static final PUSH_TRACK_ID:Ljava/lang/String; = "Push-Track-Id"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addPushTrackIdInRequest(Lcom/narvii/util/http/ApiRequest$Builder;Lcom/narvii/detail/DetailAdapter;)V
    .locals 3

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {p1}, Lcom/narvii/list/NVAdapter;->getParentContext()Lcom/narvii/app/NVContext;

    move-result-object v0

    instance-of v0, v0, Lcom/narvii/app/NVFragment;

    if-eqz v0, :cond_1

    .line 16
    invoke-virtual {p1}, Lcom/narvii/list/NVAdapter;->getParentContext()Lcom/narvii/app/NVContext;

    move-result-object p1

    check-cast p1, Lcom/narvii/app/NVFragment;

    .line 17
    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->getPushTrackId()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Push-Track-Id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    .line 19
    invoke-virtual {p0, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->headers([Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    goto :goto_0

    :cond_1
    const-string p0, "parent of detail adapter is not NVFragment"

    .line 22
    invoke-static {p0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method
