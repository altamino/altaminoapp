.class public Lcom/narvii/onlinestatus/LockInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public iconId:I

.field public locked:Z

.field public onClickListener:Landroid/view/View$OnClickListener;

.field public textId:I

.field public unlockDrawableId:I


# direct methods
.method public constructor <init>(ZIIILandroid/view/View$OnClickListener;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput p2, p0, Lcom/narvii/onlinestatus/LockInfo;->iconId:I

    .line 6
    .line 7
    iput p3, p0, Lcom/narvii/onlinestatus/LockInfo;->textId:I

    .line 8
    .line 9
    iput p4, p0, Lcom/narvii/onlinestatus/LockInfo;->unlockDrawableId:I

    .line 10
    .line 11
    iput-object p5, p0, Lcom/narvii/onlinestatus/LockInfo;->onClickListener:Landroid/view/View$OnClickListener;

    .line 12
    .line 13
    iput-boolean p1, p0, Lcom/narvii/onlinestatus/LockInfo;->locked:Z

    .line 14
    return-void
.end method
