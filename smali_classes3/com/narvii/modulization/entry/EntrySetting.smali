.class public Lcom/narvii/modulization/entry/EntrySetting;
.super Ljava/lang/Object;
.source "EntrySetting.java"


# instance fields
.field public enabled:Z

.field public privilege:Lcom/narvii/modulization/entry/Privilege;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clone()Lcom/narvii/modulization/entry/EntrySetting;
    .locals 2

    .line 15
    invoke-static {p0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 16
    const-class v1, Lcom/narvii/modulization/entry/EntrySetting;

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/modulization/entry/EntrySetting;

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
    invoke-virtual {p0}, Lcom/narvii/modulization/entry/EntrySetting;->clone()Lcom/narvii/modulization/entry/EntrySetting;

    move-result-object v0

    return-object v0
.end method

.method public getPrivilegeMinLevel()I
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/narvii/modulization/entry/EntrySetting;->privilege:Lcom/narvii/modulization/entry/Privilege;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 39
    :cond_0
    iget v0, v0, Lcom/narvii/modulization/entry/Privilege;->minLevel:I

    return v0
.end method

.method public getPrivilegeType()I
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/narvii/modulization/entry/EntrySetting;->privilege:Lcom/narvii/modulization/entry/Privilege;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 24
    :cond_0
    iget v0, v0, Lcom/narvii/modulization/entry/Privilege;->type:I

    return v0
.end method

.method public setPrivilegeMinLevel(I)V
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/narvii/modulization/entry/EntrySetting;->privilege:Lcom/narvii/modulization/entry/Privilege;

    if-nez v0, :cond_0

    return-void

    .line 47
    :cond_0
    iput p1, v0, Lcom/narvii/modulization/entry/Privilege;->minLevel:I

    return-void
.end method

.method public setPrivilegeType(I)V
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/narvii/modulization/entry/EntrySetting;->privilege:Lcom/narvii/modulization/entry/Privilege;

    if-nez v0, :cond_0

    return-void

    .line 32
    :cond_0
    iput p1, v0, Lcom/narvii/modulization/entry/Privilege;->type:I

    return-void
.end method
