.class public final synthetic Lma/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:Lma/h0;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lorg/schabi/newpipe/extractor/services/youtube/a$a;


# direct methods
.method public synthetic constructor <init>(Lma/h0;Ljava/lang/String;Ljava/lang/String;Lorg/schabi/newpipe/extractor/services/youtube/a$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lma/l;->a:Lma/h0;

    iput-object p2, p0, Lma/l;->b:Ljava/lang/String;

    iput-object p3, p0, Lma/l;->c:Ljava/lang/String;

    iput-object p4, p0, Lma/l;->d:Lorg/schabi/newpipe/extractor/services/youtube/a$a;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lma/l;->a:Lma/h0;

    iget-object v1, p0, Lma/l;->b:Ljava/lang/String;

    iget-object v2, p0, Lma/l;->c:Ljava/lang/String;

    iget-object v3, p0, Lma/l;->d:Lorg/schabi/newpipe/extractor/services/youtube/a$a;

    check-cast p1, Lqa/g;

    invoke-static {v0, v1, v2, v3, p1}, Lma/h0;->h0(Lma/h0;Ljava/lang/String;Ljava/lang/String;Lorg/schabi/newpipe/extractor/services/youtube/a$a;Lqa/g;)Ljava/util/stream/Stream;

    move-result-object p1

    return-object p1
.end method
