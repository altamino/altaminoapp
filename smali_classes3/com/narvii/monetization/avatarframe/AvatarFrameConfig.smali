.class public Lcom/narvii/monetization/avatarframe/AvatarFrameConfig;
.super Ljava/lang/Object;
.source "AvatarFrameConfig.java"


# instance fields
.field public avatarFramePath:Ljava/lang/String;

.field public fileFolder:Ljava/io/File;

.field public id:Ljava/lang/String;

.field public moodColor:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public userIconBorderColor:Ljava/lang/String;

.field public version:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clone()Lcom/narvii/monetization/avatarframe/AvatarFrameConfig;
    .locals 2

    .line 43
    invoke-static {p0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 44
    const-class v1, Lcom/narvii/monetization/avatarframe/AvatarFrameConfig;

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/monetization/avatarframe/AvatarFrameConfig;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 14
    invoke-virtual {p0}, Lcom/narvii/monetization/avatarframe/AvatarFrameConfig;->clone()Lcom/narvii/monetization/avatarframe/AvatarFrameConfig;

    move-result-object v0

    return-object v0
.end method

.method public getAbsAvatarFramePath()Ljava/lang/String;
    .locals 2

    .line 28
    iget-object v0, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameConfig;->fileFolder:Ljava/io/File;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 31
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameConfig;->fileFolder:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameConfig;->avatarFramePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBorderColor()I
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameConfig;->userIconBorderColor:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "#FFFFFF"

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameConfig;->userIconBorderColor:Ljava/lang/String;

    :goto_0
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getMoodColor()I
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameConfig;->moodColor:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "#7ccdf2"

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameConfig;->moodColor:Ljava/lang/String;

    :goto_0
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setFileFolder(Ljava/io/File;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameConfig;->fileFolder:Ljava/io/File;

    return-void
.end method
