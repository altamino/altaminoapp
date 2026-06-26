.class public Lcom/narvii/master/setting/CommunityPushResponse;
.super Lcom/narvii/model/api/ApiResponse;
.source "CommunityPushResponse.java"


# instance fields
.field public pushEnabled:Z

.field public pushExtensions:Lcom/narvii/master/setting/CommunitySubPushSetting;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/narvii/model/api/ApiResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public clone()Lcom/narvii/master/setting/CommunityPushResponse;
    .locals 2

    .line 17
    invoke-static {p0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 18
    const-class v1, Lcom/narvii/master/setting/CommunityPushResponse;

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/master/setting/CommunityPushResponse;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 9
    invoke-virtual {p0}, Lcom/narvii/master/setting/CommunityPushResponse;->clone()Lcom/narvii/master/setting/CommunityPushResponse;

    move-result-object v0

    return-object v0
.end method
