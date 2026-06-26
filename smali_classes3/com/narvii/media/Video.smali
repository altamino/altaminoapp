.class public Lcom/narvii/media/Video;
.super Ljava/lang/Object;
.source "Video.java"


# static fields
.field public static final STATUS_BUFFING:I = 0x1

.field public static final STATUS_COMPLETE:I = 0x2

.field public static final STATUS_ERROR:I = 0x3

.field public static final STATUS_PLAYING:I = 0x0

.field public static final STATUS_UNKNOW:I = 0x4


# instance fields
.field status:I

.field videoUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/narvii/media/Video;->videoUri:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public getStatus()I
    .locals 1

    .line 32
    iget v0, p0, Lcom/narvii/media/Video;->status:I

    return v0
.end method

.method public getVideoUri()Landroid/net/Uri;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/narvii/media/Video;->videoUri:Landroid/net/Uri;

    return-object v0
.end method

.method public setStatus(I)V
    .locals 0

    .line 36
    iput p1, p0, Lcom/narvii/media/Video;->status:I

    return-void
.end method

.method public setVideoUri(Landroid/net/Uri;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/narvii/media/Video;->videoUri:Landroid/net/Uri;

    return-void
.end method
