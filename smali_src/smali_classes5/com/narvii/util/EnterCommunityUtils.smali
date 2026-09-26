.class public Lcom/narvii/util/EnterCommunityUtils;
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

.method public static fastEnter(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lcom/narvii/util/EnterCommunityUtils;->fastEnter(ILjava/lang/String;)V

    return-void
.end method

.method public static fastEnter(ILjava/lang/String;)V
    .locals 2

    .line 2
    sget-object v0, Lcom/narvii/pushservice/UpdateDeviceTokenHelper;->GLOBAL_ENTER:Lcom/narvii/util/statistics/TmpValue;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/util/statistics/TmpValue;->set(Ljava/lang/Object;)V

    .line 3
    sget-object v0, Lcom/narvii/drawer/DrawerHost;->GLOBAL_ENTER:Lcom/narvii/util/statistics/TmpValue;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/util/statistics/TmpValue;->set(Ljava/lang/Object;)V

    .line 4
    sget-object v0, Lcom/narvii/livelayer/LiveLayerService;->GLOBAL_ENTER:Lcom/narvii/util/statistics/TmpValue;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/narvii/util/statistics/TmpValue;->set(Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    .line 5
    sget-object p0, Lcom/narvii/services/EnterCommunityHelper;->SOURCE:Lcom/narvii/util/statistics/TmpValue;

    invoke-virtual {p0, p1}, Lcom/narvii/util/statistics/TmpValue;->set(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
