.class final Lma/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final content:Ljava/lang/String;

.field private isUrl:Z

.field private final itagItem:Lorg/schabi/newpipe/extractor/services/youtube/a;


# direct methods
.method constructor <init>(Ljava/lang/String;Lorg/schabi/newpipe/extractor/services/youtube/a;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lma/a;->content:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p2, p0, Lma/a;->itagItem:Lorg/schabi/newpipe/extractor/services/youtube/a;

    .line 8
    return-void
.end method


# virtual methods
.method a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lma/a;->content:Ljava/lang/String;

    return-object v0
.end method

.method b()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lma/a;->isUrl:Z

    return v0
.end method

.method c()Lorg/schabi/newpipe/extractor/services/youtube/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lma/a;->itagItem:Lorg/schabi/newpipe/extractor/services/youtube/a;

    return-object v0
.end method

.method d(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lma/a;->isUrl:Z

    return-void
.end method
