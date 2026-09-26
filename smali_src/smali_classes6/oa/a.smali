.class public final Loa/a;
.super Loa/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Loa/a$a;
    }
.end annotation


# static fields
.field public static final UNKNOWN_BITRATE:I = -0x1


# instance fields
.field private final audioLocale:Ljava/util/Locale;

.field private final audioTrackId:Ljava/lang/String;

.field private final audioTrackName:Ljava/lang/String;

.field private final audioTrackType:Loa/c;

.field private final averageBitrate:I

.field private bitrate:I

.field private codec:Ljava/lang/String;

.field private indexEnd:I

.field private indexStart:I

.field private initEnd:I

.field private initStart:I

.field private itag:I

.field private itagItem:Lorg/schabi/newpipe/extractor/services/youtube/a;

.field private quality:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLx9/m;Loa/d;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;Loa/c;Lorg/schabi/newpipe/extractor/services/youtube/a;)V
    .locals 9

    move-object v7, p0

    move-object/from16 v8, p12

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p7

    .line 2
    invoke-direct/range {v0 .. v6}, Loa/g;-><init>(Ljava/lang/String;Ljava/lang/String;ZLx9/m;Loa/d;Ljava/lang/String;)V

    const/4 v0, -0x1

    iput v0, v7, Loa/a;->itag:I

    if-eqz v8, :cond_0

    iput-object v8, v7, Loa/a;->itagItem:Lorg/schabi/newpipe/extractor/services/youtube/a;

    .line 3
    iget v0, v8, Lorg/schabi/newpipe/extractor/services/youtube/a;->id:I

    iput v0, v7, Loa/a;->itag:I

    .line 4
    invoke-virtual/range {p12 .. p12}, Lorg/schabi/newpipe/extractor/services/youtube/a;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Loa/a;->quality:Ljava/lang/String;

    .line 5
    invoke-virtual/range {p12 .. p12}, Lorg/schabi/newpipe/extractor/services/youtube/a;->f()I

    move-result v0

    iput v0, v7, Loa/a;->bitrate:I

    .line 6
    invoke-virtual/range {p12 .. p12}, Lorg/schabi/newpipe/extractor/services/youtube/a;->m()I

    move-result v0

    iput v0, v7, Loa/a;->initStart:I

    .line 7
    invoke-virtual/range {p12 .. p12}, Lorg/schabi/newpipe/extractor/services/youtube/a;->l()I

    move-result v0

    iput v0, v7, Loa/a;->initEnd:I

    .line 8
    invoke-virtual/range {p12 .. p12}, Lorg/schabi/newpipe/extractor/services/youtube/a;->k()I

    move-result v0

    iput v0, v7, Loa/a;->indexStart:I

    .line 9
    invoke-virtual/range {p12 .. p12}, Lorg/schabi/newpipe/extractor/services/youtube/a;->j()I

    move-result v0

    iput v0, v7, Loa/a;->indexEnd:I

    .line 10
    invoke-virtual/range {p12 .. p12}, Lorg/schabi/newpipe/extractor/services/youtube/a;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Loa/a;->codec:Ljava/lang/String;

    :cond_0
    move v0, p6

    iput v0, v7, Loa/a;->averageBitrate:I

    move-object/from16 v0, p8

    iput-object v0, v7, Loa/a;->audioTrackId:Ljava/lang/String;

    move-object/from16 v0, p9

    iput-object v0, v7, Loa/a;->audioTrackName:Ljava/lang/String;

    move-object/from16 v0, p10

    iput-object v0, v7, Loa/a;->audioLocale:Ljava/util/Locale;

    move-object/from16 v0, p11

    iput-object v0, v7, Loa/a;->audioTrackType:Loa/c;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLx9/m;Loa/d;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;Loa/c;Lorg/schabi/newpipe/extractor/services/youtube/a;Loa/b;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p12}, Loa/a;-><init>(Ljava/lang/String;Ljava/lang/String;ZLx9/m;Loa/d;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;Loa/c;Lorg/schabi/newpipe/extractor/services/youtube/a;)V

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
    instance-of v0, p1, Loa/a;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget v0, p0, Loa/a;->averageBitrate:I

    .line 13
    .line 14
    check-cast p1, Loa/a;

    .line 15
    .line 16
    iget v1, p1, Loa/a;->averageBitrate:I

    .line 17
    .line 18
    if-ne v0, v1, :cond_0

    .line 19
    .line 20
    iget-object v0, p0, Loa/a;->audioTrackId:Ljava/lang/String;

    .line 21
    .line 22
    iget-object v1, p1, Loa/a;->audioTrackId:Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 26
    move-result v0

    .line 27
    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    iget-object v0, p0, Loa/a;->audioTrackType:Loa/c;

    .line 31
    .line 32
    iget-object v1, p1, Loa/a;->audioTrackType:Loa/c;

    .line 33
    .line 34
    if-ne v0, v1, :cond_0

    .line 35
    .line 36
    iget-object v0, p0, Loa/a;->audioLocale:Ljava/util/Locale;

    .line 37
    .line 38
    iget-object p1, p1, Loa/a;->audioLocale:Ljava/util/Locale;

    .line 39
    .line 40
    .line 41
    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 42
    move-result p1

    .line 43
    .line 44
    if-eqz p1, :cond_0

    .line 45
    const/4 p1, 0x1

    .line 46
    goto :goto_0

    .line 47
    :cond_0
    const/4 p1, 0x0

    .line 48
    :goto_0
    return p1
.end method

.method public f()I
    .locals 1

    .line 1
    iget v0, p0, Loa/a;->averageBitrate:I

    return v0
.end method
