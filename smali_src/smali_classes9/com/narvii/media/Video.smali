.class public Lcom/narvii/media/Video;
.super Ljava/lang/Object;
.source "SourceFile"


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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/narvii/media/Video;->videoUri:Landroid/net/Uri;

    .line 6
    return-void
.end method


# virtual methods
.method public getStatus()I
    .locals 1

    iget v0, p0, Lcom/narvii/media/Video;->status:I

    return v0
.end method

.method public getVideoUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/narvii/media/Video;->videoUri:Landroid/net/Uri;

    return-object v0
.end method

.method public setStatus(I)V
    .locals 0

    iput p1, p0, Lcom/narvii/media/Video;->status:I

    return-void
.end method

.method public setVideoUri(Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/media/Video;->videoUri:Landroid/net/Uri;

    return-void
.end method
