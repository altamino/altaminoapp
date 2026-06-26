.class public Lcom/narvii/nvplayer/NVVideoException;
.super Ljava/lang/Exception;
.source "NVVideoException.java"


# static fields
.field public static final YOUTUBE_EXEC_FAIL:I = 0x1


# instance fields
.field private failType:I

.field private failUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getFailType()I
    .locals 1

    .line 18
    iget v0, p0, Lcom/narvii/nvplayer/NVVideoException;->failType:I

    return v0
.end method

.method public getFailUrl()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/narvii/nvplayer/NVVideoException;->failUrl:Ljava/lang/String;

    return-object v0
.end method

.method public setFailType(I)V
    .locals 0

    .line 22
    iput p1, p0, Lcom/narvii/nvplayer/NVVideoException;->failType:I

    return-void
.end method

.method public setFailUrl(Ljava/lang/String;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/narvii/nvplayer/NVVideoException;->failUrl:Ljava/lang/String;

    return-void
.end method
