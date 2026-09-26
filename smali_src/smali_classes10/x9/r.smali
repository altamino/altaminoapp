.class public final Lx9/r;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final Bandcamp:Lca/a;

.field public static final MediaCCC:Lfa/a;

.field public static final PeerTube:Lha/g;

.field private static final SERVICES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lx9/s;",
            ">;"
        }
    .end annotation
.end field

.field public static final SoundCloud:Lja/j;

.field public static final YouTube:Lorg/schabi/newpipe/extractor/services/youtube/s0;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    .line 2
    new-instance v0, Lorg/schabi/newpipe/extractor/services/youtube/s0;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Lorg/schabi/newpipe/extractor/services/youtube/s0;-><init>(I)V

    .line 7
    .line 8
    sput-object v0, Lx9/r;->YouTube:Lorg/schabi/newpipe/extractor/services/youtube/s0;

    .line 9
    .line 10
    new-instance v1, Lja/j;

    .line 11
    const/4 v2, 0x1

    .line 12
    .line 13
    .line 14
    invoke-direct {v1, v2}, Lja/j;-><init>(I)V

    .line 15
    .line 16
    sput-object v1, Lx9/r;->SoundCloud:Lja/j;

    .line 17
    .line 18
    new-instance v2, Lfa/a;

    .line 19
    const/4 v3, 0x2

    .line 20
    .line 21
    .line 22
    invoke-direct {v2, v3}, Lfa/a;-><init>(I)V

    .line 23
    .line 24
    sput-object v2, Lx9/r;->MediaCCC:Lfa/a;

    .line 25
    .line 26
    new-instance v3, Lha/g;

    .line 27
    const/4 v4, 0x3

    .line 28
    .line 29
    .line 30
    invoke-direct {v3, v4}, Lha/g;-><init>(I)V

    .line 31
    .line 32
    sput-object v3, Lx9/r;->PeerTube:Lha/g;

    .line 33
    .line 34
    new-instance v4, Lca/a;

    .line 35
    const/4 v5, 0x4

    .line 36
    .line 37
    .line 38
    invoke-direct {v4, v5}, Lca/a;-><init>(I)V

    .line 39
    .line 40
    sput-object v4, Lx9/r;->Bandcamp:Lca/a;

    .line 41
    .line 42
    .line 43
    invoke-static {v0, v1, v2, v3, v4}, Lx9/q;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    .line 44
    move-result-object v0

    .line 45
    .line 46
    sput-object v0, Lx9/r;->SERVICES:Ljava/util/List;

    .line 47
    return-void
.end method

.method public static a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lx9/s;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lx9/r;->SERVICES:Ljava/util/List;

    return-object v0
.end method
