.class public Lcom/narvii/util/RequestResult;
.super Ljava/lang/Object;
.source "SourceFile"


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

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/narvii/util/RequestResult;->code:I

    iput-object p2, p0, Lcom/narvii/util/RequestResult;->object:Lcom/narvii/model/NVObject;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/narvii/util/RequestResult;->code:I

    iput-object p2, p0, Lcom/narvii/util/RequestResult;->errorMessage:Ljava/lang/String;

    return-void
.end method
