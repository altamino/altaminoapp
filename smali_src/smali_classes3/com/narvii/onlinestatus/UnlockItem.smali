.class public Lcom/narvii/onlinestatus/UnlockItem;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field finished:Z

.field public number:I

.field public numberZeroStatusId:I

.field public statusId:I

.field public textId:I


# direct methods
.method public constructor <init>(IIIZ)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput p1, p0, Lcom/narvii/onlinestatus/UnlockItem;->textId:I

    .line 6
    .line 7
    iput p2, p0, Lcom/narvii/onlinestatus/UnlockItem;->number:I

    .line 8
    .line 9
    iput p3, p0, Lcom/narvii/onlinestatus/UnlockItem;->statusId:I

    .line 10
    .line 11
    iput-boolean p4, p0, Lcom/narvii/onlinestatus/UnlockItem;->finished:Z

    .line 12
    return-void
.end method
