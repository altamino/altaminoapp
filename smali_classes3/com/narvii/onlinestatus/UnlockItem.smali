.class public Lcom/narvii/onlinestatus/UnlockItem;
.super Ljava/lang/Object;
.source "UnlockItem.java"


# instance fields
.field finished:Z

.field public number:I

.field public numberZeroStatusId:I

.field public statusId:I

.field public textId:I


# direct methods
.method public constructor <init>(IIIZ)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput p1, p0, Lcom/narvii/onlinestatus/UnlockItem;->textId:I

    .line 16
    iput p2, p0, Lcom/narvii/onlinestatus/UnlockItem;->number:I

    .line 17
    iput p3, p0, Lcom/narvii/onlinestatus/UnlockItem;->statusId:I

    .line 18
    iput-boolean p4, p0, Lcom/narvii/onlinestatus/UnlockItem;->finished:Z

    return-void
.end method
