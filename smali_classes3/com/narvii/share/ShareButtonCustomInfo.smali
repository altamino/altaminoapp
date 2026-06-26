.class public abstract Lcom/narvii/share/ShareButtonCustomInfo;
.super Ljava/lang/Object;
.source "ShareButtonCustomInfo.java"


# instance fields
.field protected final nvContext:Lcom/narvii/app/NVContext;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/narvii/share/ShareButtonCustomInfo;->nvContext:Lcom/narvii/app/NVContext;

    return-void
.end method


# virtual methods
.method public getActSemantic()Lcom/narvii/logging/ActSemantic;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getExtraInfo()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getIcon()I
.end method

.method public getStatSelectionForShare()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTargetName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getTextString()I
.end method

.method public abstract onClick(Lcom/narvii/share/SharePayload;)V
.end method
