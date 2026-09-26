.class final Lorg/schabi/newpipe/extractor/services/youtube/i$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/schabi/newpipe/extractor/services/youtube/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field final close:Ljava/lang/String;

.field final open:Ljava/lang/String;

.field openPosInOutput:I

.field final pos:I

.field final transformContent:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/schabi/newpipe/extractor/services/youtube/i$a;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/util/function/Function;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/util/function/Function;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/function/Function<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/i$a;->openPosInOutput:I

    iput-object p1, p0, Lorg/schabi/newpipe/extractor/services/youtube/i$a;->open:Ljava/lang/String;

    iput-object p2, p0, Lorg/schabi/newpipe/extractor/services/youtube/i$a;->close:Ljava/lang/String;

    iput p3, p0, Lorg/schabi/newpipe/extractor/services/youtube/i$a;->pos:I

    iput-object p4, p0, Lorg/schabi/newpipe/extractor/services/youtube/i$a;->transformContent:Ljava/util/function/Function;

    return-void
.end method


# virtual methods
.method public a(Lorg/schabi/newpipe/extractor/services/youtube/i$a;)Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/i$a;->open:Ljava/lang/String;

    .line 3
    .line 4
    iget-object p1, p1, Lorg/schabi/newpipe/extractor/services/youtube/i$a;->open:Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    move-result p1

    .line 9
    return p1
.end method
