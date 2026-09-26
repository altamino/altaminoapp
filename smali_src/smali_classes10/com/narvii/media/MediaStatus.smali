.class public Lcom/narvii/media/MediaStatus;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DOWNLOADING:Lcom/narvii/media/MediaStatus;

.field public static final IDLE:Lcom/narvii/media/MediaStatus;

.field public static final STATUS_DOWNLOADING:I = 0x3

.field public static final STATUS_IDLE:I = 0x0

.field public static final STATUS_PAUSING:I = 0x2

.field public static final STATUS_PLAYING:I = 0x1


# instance fields
.field public position:I

.field public status:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/media/MediaStatus;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1, v1}, Lcom/narvii/media/MediaStatus;-><init>(II)V

    .line 7
    .line 8
    sput-object v0, Lcom/narvii/media/MediaStatus;->IDLE:Lcom/narvii/media/MediaStatus;

    .line 9
    .line 10
    new-instance v0, Lcom/narvii/media/MediaStatus;

    .line 11
    const/4 v2, 0x3

    .line 12
    .line 13
    .line 14
    invoke-direct {v0, v2, v1}, Lcom/narvii/media/MediaStatus;-><init>(II)V

    .line 15
    .line 16
    sput-object v0, Lcom/narvii/media/MediaStatus;->DOWNLOADING:Lcom/narvii/media/MediaStatus;

    .line 17
    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput p1, p0, Lcom/narvii/media/MediaStatus;->status:I

    .line 6
    .line 7
    iput p2, p0, Lcom/narvii/media/MediaStatus;->position:I

    .line 8
    return-void
.end method
