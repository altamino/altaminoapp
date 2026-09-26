.class public final synthetic Lorg/schabi/newpipe/extractor/services/youtube/l0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic a:Ljava/net/URL;


# direct methods
.method public synthetic constructor <init>(Ljava/net/URL;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/extractor/services/youtube/l0;->a:Ljava/net/URL;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/l0;->a:Ljava/net/URL;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lorg/schabi/newpipe/extractor/services/youtube/r0;->h(Ljava/net/URL;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
