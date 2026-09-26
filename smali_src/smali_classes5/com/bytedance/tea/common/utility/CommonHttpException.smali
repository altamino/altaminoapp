.class public Lcom/bytedance/tea/common/utility/CommonHttpException;
.super Ljava/lang/Exception;
.source "SourceFile"


# instance fields
.field private mResponseCode:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    iput p1, p0, Lcom/bytedance/tea/common/utility/CommonHttpException;->mResponseCode:I

    .line 6
    return-void
.end method


# virtual methods
.method public getResponseCode()I
    .locals 1

    iget v0, p0, Lcom/bytedance/tea/common/utility/CommonHttpException;->mResponseCode:I

    return v0
.end method
