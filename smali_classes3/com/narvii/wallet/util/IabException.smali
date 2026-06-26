.class public Lcom/narvii/wallet/util/IabException;
.super Ljava/lang/Exception;
.source "IabException.java"


# instance fields
.field mResult:Lcom/narvii/wallet/util/IabResult;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    .line 31
    new-instance v0, Lcom/narvii/wallet/util/IabResult;

    invoke-direct {v0, p1, p2}, Lcom/narvii/wallet/util/IabResult;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/narvii/wallet/util/IabException;-><init>(Lcom/narvii/wallet/util/IabResult;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Exception;)V
    .locals 1

    .line 38
    new-instance v0, Lcom/narvii/wallet/util/IabResult;

    invoke-direct {v0, p1, p2}, Lcom/narvii/wallet/util/IabResult;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, v0, p3}, Lcom/narvii/wallet/util/IabException;-><init>(Lcom/narvii/wallet/util/IabResult;Ljava/lang/Exception;)V

    return-void
.end method

.method public constructor <init>(Lcom/narvii/wallet/util/IabResult;)V
    .locals 1

    const/4 v0, 0x0

    .line 28
    invoke-direct {p0, p1, v0}, Lcom/narvii/wallet/util/IabException;-><init>(Lcom/narvii/wallet/util/IabResult;Ljava/lang/Exception;)V

    return-void
.end method

.method public constructor <init>(Lcom/narvii/wallet/util/IabResult;Ljava/lang/Exception;)V
    .locals 1

    .line 34
    invoke-virtual {p1}, Lcom/narvii/wallet/util/IabResult;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 35
    iput-object p1, p0, Lcom/narvii/wallet/util/IabException;->mResult:Lcom/narvii/wallet/util/IabResult;

    return-void
.end method


# virtual methods
.method public getResult()Lcom/narvii/wallet/util/IabResult;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/narvii/wallet/util/IabException;->mResult:Lcom/narvii/wallet/util/IabResult;

    return-object v0
.end method
