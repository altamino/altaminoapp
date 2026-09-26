.class public Lba/b;
.super Lx9/e;
.source "SourceFile"


# instance fields
.field private description:Loa/e;

.field private playlistType:Lba/a;

.field private streamCount:J

.field private uploaderName:Ljava/lang/String;

.field private uploaderUrl:Ljava/lang/String;

.field private uploaderVerified:Z


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lx9/e$a;->PLAYLIST:Lx9/e$a;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, v0, p1, p2, p3}, Lx9/e;-><init>(Lx9/e$a;ILjava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    const-wide/16 p1, 0x0

    .line 8
    .line 9
    iput-wide p1, p0, Lba/b;->streamCount:J

    .line 10
    return-void
.end method


# virtual methods
.method public g(Loa/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lba/b;->description:Loa/e;

    return-void
.end method

.method public h(Lba/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lba/b;->playlistType:Lba/a;

    return-void
.end method

.method public i(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lba/b;->streamCount:J

    return-void
.end method

.method public j(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lba/b;->uploaderName:Ljava/lang/String;

    return-void
.end method

.method public k(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lba/b;->uploaderUrl:Ljava/lang/String;

    return-void
.end method

.method public l(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lba/b;->uploaderVerified:Z

    return-void
.end method
