.class public final synthetic Lorg/schabi/newpipe/extractor/services/youtube/m0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic a:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/extractor/services/youtube/m0;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/m0;->a:Ljava/lang/String;

    check-cast p1, Lcom/grack/nanojson/JsonObject;

    invoke-static {v0, p1}, Lorg/schabi/newpipe/extractor/services/youtube/r0;->g(Ljava/lang/String;Lcom/grack/nanojson/JsonObject;)Z

    move-result p1

    return p1
.end method
