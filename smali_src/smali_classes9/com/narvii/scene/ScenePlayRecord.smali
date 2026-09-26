.class public Lcom/narvii/scene/ScenePlayRecord;
.super Ljava/lang/Object;
.source "SourceFile"


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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput p1, p0, Lcom/narvii/scene/ScenePlayRecord;->interactionType:I

    .line 6
    return-void
.end method
