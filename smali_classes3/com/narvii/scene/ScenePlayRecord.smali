.class public Lcom/narvii/scene/ScenePlayRecord;
.super Ljava/lang/Object;
.source "ScenePlayRecord.java"


# static fields
.field public static final TYPE_POLL:I = 0x2

.field public static final TYPE_QUIZ:I = 0x1


# instance fields
.field public interactionType:I

.field public isAnswerRight:Z

.field public result:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput p1, p0, Lcom/narvii/scene/ScenePlayRecord;->interactionType:I

    return-void
.end method
