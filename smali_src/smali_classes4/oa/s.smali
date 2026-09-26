.class public final Loa/s;
.super Loa/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Loa/s$a;
    }
.end annotation


# static fields
.field public static final RESOLUTION_UNKNOWN:Ljava/lang/String; = ""


# instance fields
.field private bitrate:I

.field private codec:Ljava/lang/String;

.field private fps:I

.field private height:I

.field private indexEnd:I

.field private indexStart:I

.field private initEnd:I

.field private initStart:I

.field public final isVideoOnly:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private itag:I

.field private itagItem:Lorg/schabi/newpipe/extractor/services/youtube/a;

.field private quality:Ljava/lang/String;

.field public final resolution:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private width:I


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLx9/m;Loa/d;Ljava/lang/String;ZLjava/lang/String;Lorg/schabi/newpipe/extractor/services/youtube/a;)V
    .locals 9

    move-object v7, p0

    move-object/from16 v8, p9

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p8

    .line 2
    invoke-direct/range {v0 .. v6}, Loa/g;-><init>(Ljava/lang/String;Ljava/lang/String;ZLx9/m;Loa/d;Ljava/lang/String;)V

    const/4 v0, -0x1

    iput v0, v7, Loa/s;->itag:I

    if-eqz v8, :cond_0

    iput-object v8, v7, Loa/s;->itagItem:Lorg/schabi/newpipe/extractor/services/youtube/a;

    .line 3
    iget v0, v8, Lorg/schabi/newpipe/extractor/services/youtube/a;->id:I

    iput v0, v7, Loa/s;->itag:I

    .line 4
    invoke-virtual/range {p9 .. p9}, Lorg/schabi/newpipe/extractor/services/youtube/a;->f()I

    move-result v0

    iput v0, v7, Loa/s;->bitrate:I

    .line 5
    invoke-virtual/range {p9 .. p9}, Lorg/schabi/newpipe/extractor/services/youtube/a;->m()I

    move-result v0

    iput v0, v7, Loa/s;->initStart:I

    .line 6
    invoke-virtual/range {p9 .. p9}, Lorg/schabi/newpipe/extractor/services/youtube/a;->l()I

    move-result v0

    iput v0, v7, Loa/s;->initEnd:I

    .line 7
    invoke-virtual/range {p9 .. p9}, Lorg/schabi/newpipe/extractor/services/youtube/a;->k()I

    move-result v0

    iput v0, v7, Loa/s;->indexStart:I

    .line 8
    invoke-virtual/range {p9 .. p9}, Lorg/schabi/newpipe/extractor/services/youtube/a;->j()I

    move-result v0

    iput v0, v7, Loa/s;->indexEnd:I

    .line 9
    invoke-virtual/range {p9 .. p9}, Lorg/schabi/newpipe/extractor/services/youtube/a;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Loa/s;->codec:Ljava/lang/String;

    .line 10
    invoke-virtual/range {p9 .. p9}, Lorg/schabi/newpipe/extractor/services/youtube/a;->i()I

    move-result v0

    iput v0, v7, Loa/s;->height:I

    .line 11
    invoke-virtual/range {p9 .. p9}, Lorg/schabi/newpipe/extractor/services/youtube/a;->r()I

    move-result v0

    iput v0, v7, Loa/s;->width:I

    .line 12
    invoke-virtual/range {p9 .. p9}, Lorg/schabi/newpipe/extractor/services/youtube/a;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Loa/s;->quality:Ljava/lang/String;

    .line 13
    invoke-virtual/range {p9 .. p9}, Lorg/schabi/newpipe/extractor/services/youtube/a;->h()I

    move-result v0

    iput v0, v7, Loa/s;->fps:I

    :cond_0
    move-object v0, p6

    iput-object v0, v7, Loa/s;->resolution:Ljava/lang/String;

    move/from16 v0, p7

    iput-boolean v0, v7, Loa/s;->isVideoOnly:Z

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLx9/m;Loa/d;Ljava/lang/String;ZLjava/lang/String;Lorg/schabi/newpipe/extractor/services/youtube/a;Loa/t;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p9}, Loa/s;-><init>(Ljava/lang/String;Ljava/lang/String;ZLx9/m;Loa/d;Ljava/lang/String;ZLjava/lang/String;Lorg/schabi/newpipe/extractor/services/youtube/a;)V

    return-void
.end method


# virtual methods
.method public b(Loa/g;)Z
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Loa/g;->b(Loa/g;)Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    instance-of v0, p1, Loa/s;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Loa/s;->resolution:Ljava/lang/String;

    .line 13
    .line 14
    check-cast p1, Loa/s;

    .line 15
    .line 16
    iget-object v1, p1, Loa/s;->resolution:Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    move-result v0

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    iget-boolean v0, p0, Loa/s;->isVideoOnly:Z

    .line 25
    .line 26
    iget-boolean p1, p1, Loa/s;->isVideoOnly:Z

    .line 27
    .line 28
    if-ne v0, p1, :cond_0

    .line 29
    const/4 p1, 0x1

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 p1, 0x0

    .line 32
    :goto_0
    return p1
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Loa/s;->resolution:Ljava/lang/String;

    return-object v0
.end method
