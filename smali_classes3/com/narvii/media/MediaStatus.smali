.class public Lcom/narvii/media/MediaStatus;
.super Ljava/lang/Object;
.source "MediaStatus.java"


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

    .line 13
    new-instance v0, Lcom/narvii/media/MediaStatus;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/narvii/media/MediaStatus;-><init>(II)V

    sput-object v0, Lcom/narvii/media/MediaStatus;->IDLE:Lcom/narvii/media/MediaStatus;

    .line 14
    new-instance v0, Lcom/narvii/media/MediaStatus;

    const/4 v2, 0x3

    invoke-direct {v0, v2, v1}, Lcom/narvii/media/MediaStatus;-><init>(II)V

    sput-object v0, Lcom/narvii/media/MediaStatus;->DOWNLOADING:Lcom/narvii/media/MediaStatus;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput p1, p0, Lcom/narvii/media/MediaStatus;->status:I

    .line 21
    iput p2, p0, Lcom/narvii/media/MediaStatus;->position:I

    return-void
.end method
