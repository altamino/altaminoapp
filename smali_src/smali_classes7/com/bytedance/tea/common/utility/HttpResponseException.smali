.class public Lcom/bytedance/tea/common/utility/HttpResponseException;
.super Ljava/lang/Exception;
.source "SourceFile"


# instance fields
.field public message:Ljava/lang/String;

.field public statusCode:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 4
    .line 5
    iput p1, p0, Lcom/bytedance/tea/common/utility/HttpResponseException;->statusCode:I

    .line 6
    .line 7
    iput-object p2, p0, Lcom/bytedance/tea/common/utility/HttpResponseException;->message:Ljava/lang/String;

    .line 8
    return-void
.end method


# virtual methods
.method public getMsg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/tea/common/utility/HttpResponseException;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusCode()I
    .locals 1

    iget v0, p0, Lcom/bytedance/tea/common/utility/HttpResponseException;->statusCode:I

    return v0
.end method
