.class public Lcom/narvii/util/RequestResult;
.super Ljava/lang/Object;
.source "RequestResult.java"


# static fields
.field public static final RESULT_FAILED:I = 0x1

.field public static final RESULT_SUCCESS:I


# instance fields
.field public code:I

.field public errorMessage:Ljava/lang/String;

.field public object:Lcom/narvii/model/NVObject;


# direct methods
.method public constructor <init>(ILcom/narvii/model/NVObject;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput p1, p0, Lcom/narvii/util/RequestResult;->code:I

    .line 21
    iput-object p2, p0, Lcom/narvii/util/RequestResult;->object:Lcom/narvii/model/NVObject;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput p1, p0, Lcom/narvii/util/RequestResult;->code:I

    .line 26
    iput-object p2, p0, Lcom/narvii/util/RequestResult;->errorMessage:Ljava/lang/String;

    return-void
.end method
