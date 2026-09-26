.class public Lcom/narvii/monetization/avatarframe/AvatarFrameConfig;
.super Ljava/lang/Object;
.source "SourceFile"


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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public clone()Lcom/narvii/monetization/avatarframe/AvatarFrameConfig;
    .locals 2

    .line 2
    invoke-static {p0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

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

    .line 1
    invoke-virtual {p0}, Lcom/narvii/monetization/avatarframe/AvatarFrameConfig;->clone()Lcom/narvii/monetization/avatarframe/AvatarFrameConfig;

    move-result-object v0

    return-object v0
.end method

.method public getAbsAvatarFramePath()Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameConfig;->fileFolder:Ljava/io/File;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    goto :goto_0

    .line 12
    .line 13
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    iget-object v1, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameConfig;->fileFolder:Ljava/io/File;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 22
    move-result-object v1

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    const-string v1, "/"

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    iget-object v1, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameConfig;->avatarFramePath:Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    move-result-object v0

    .line 40
    return-object v0

    .line 41
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 42
    return-object v0
.end method

.method public getBorderColor()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameConfig;->userIconBorderColor:Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const-string v0, "#FFFFFF"

    .line 11
    goto :goto_0

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameConfig;->userIconBorderColor:Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    :goto_0
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 17
    move-result v0

    .line 18
    return v0
.end method

.method public getMoodColor()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameConfig;->moodColor:Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const-string v0, "#7ccdf2"

    .line 11
    goto :goto_0

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameConfig;->moodColor:Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    :goto_0
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 17
    move-result v0

    .line 18
    return v0
.end method

.method public setFileFolder(Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameConfig;->fileFolder:Ljava/io/File;

    return-void
.end method
