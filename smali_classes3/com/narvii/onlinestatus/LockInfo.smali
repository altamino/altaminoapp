.class public Lcom/narvii/onlinestatus/LockInfo;
.super Ljava/lang/Object;
.source "LockInfo.java"


# instance fields
.field public iconId:I

.field public locked:Z

.field public onClickListener:Landroid/view/View$OnClickListener;

.field public textId:I

.field public unlockDrawableId:I


# direct methods
.method public constructor <init>(ZIIILandroid/view/View$OnClickListener;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-boolean p1, p0, Lcom/narvii/onlinestatus/LockInfo;->locked:Z

    .line 18
    iput p2, p0, Lcom/narvii/onlinestatus/LockInfo;->iconId:I

    .line 19
    iput p3, p0, Lcom/narvii/onlinestatus/LockInfo;->textId:I

    .line 20
    iput p4, p0, Lcom/narvii/onlinestatus/LockInfo;->unlockDrawableId:I

    .line 21
    iput-object p5, p0, Lcom/narvii/onlinestatus/LockInfo;->onClickListener:Landroid/view/View$OnClickListener;

    .line 22
    iput-boolean p1, p0, Lcom/narvii/onlinestatus/LockInfo;->locked:Z

    return-void
.end method
