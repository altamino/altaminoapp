.class public Lcom/narvii/suggest/interest/RcmdUser;
.super Lcom/narvii/model/NVObject;
.source "RcmdUser.java"


# instance fields
.field public displayName:Ljava/lang/String;

.field public interestId:Ljava/lang/String;

.field public interestName:Ljava/lang/String;

.field public rcmdUsers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/model/User;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/narvii/model/NVObject;-><init>()V

    return-void
.end method


# virtual methods
.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/narvii/suggest/interest/RcmdUser;->displayName:Ljava/lang/String;

    invoke-static {v0}, Lcom/narvii/util/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 17
    iget-object v0, p0, Lcom/narvii/suggest/interest/RcmdUser;->displayName:Ljava/lang/String;

    return-object v0

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/narvii/suggest/interest/RcmdUser;->interestName:Ljava/lang/String;

    return-object v0
.end method

.method public id()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public objectType()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public parentId()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public status()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public uid()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
