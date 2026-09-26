.class public abstract Lcom/narvii/share/BaseShareButtonRepost;
.super Lcom/narvii/share/ShareButtonCustomInfo;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/share/ShareButtonCustomInfo;-><init>(Lcom/narvii/app/NVContext;)V

    .line 4
    return-void
.end method


# virtual methods
.method public getIcon()I
    .locals 1

    sget v0, Lcom/narvii/lib/R$drawable;->ic_share_repost:I

    return v0
.end method

.method public getTextString()I
    .locals 1

    sget v0, Lcom/narvii/lib/R$string;->repost:I

    return v0
.end method
