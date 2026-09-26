.class public Lcom/narvii/monetization/sticker/shared/SharedStickerPrefHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private cid:I

.field nvContext:Lcom/narvii/app/NVContext;

.field sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerPrefHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 6
    .line 7
    const-string v0, "config"

    .line 8
    .line 9
    .line 10
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 17
    move-result v0

    .line 18
    .line 19
    iput v0, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerPrefHelper;->cid:I

    .line 20
    .line 21
    .line 22
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 23
    move-result-object p1

    .line 24
    .line 25
    const-string v0, "shared_sticker_scroll"

    .line 26
    const/4 v1, 0x0

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 30
    move-result-object p1

    .line 31
    .line 32
    iput-object p1, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerPrefHelper;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 33
    return-void
.end method


# virtual methods
.method public getScrollPosition()I
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerPrefHelper;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 3
    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    iget v2, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerPrefHelper;->cid:I

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string v2, "_position"

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    move-result-object v1

    .line 22
    const/4 v2, -0x1

    .line 23
    .line 24
    .line 25
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 26
    move-result v0

    .line 27
    return v0
.end method

.method public getScrollTop()I
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerPrefHelper;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 3
    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    iget v2, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerPrefHelper;->cid:I

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string v2, "_top"

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    move-result-object v1

    .line 22
    const/4 v2, -0x1

    .line 23
    .line 24
    .line 25
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 26
    move-result v0

    .line 27
    return v0
.end method

.method public saveScrollPositionAndTop(II)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerPrefHelper;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    iget v2, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerPrefHelper;->cid:I

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const-string v2, "_position"

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    move-result-object v1

    .line 26
    .line 27
    .line 28
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 29
    move-result-object p1

    .line 30
    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    .line 36
    iget v1, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerPrefHelper;->cid:I

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    const-string v1, "_top"

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    move-result-object v0

    .line 49
    .line 50
    .line 51
    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 52
    move-result-object p1

    .line 53
    .line 54
    .line 55
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 56
    return-void
.end method
