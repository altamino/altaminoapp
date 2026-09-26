.class public final synthetic Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:Lcom/grack/nanojson/JsonObject;


# direct methods
.method public synthetic constructor <init>(Lcom/grack/nanojson/JsonObject;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/c;->a:Lcom/grack/nanojson/JsonObject;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/c;->a:Lcom/grack/nanojson/JsonObject;

    check-cast p1, Ljava/util/Map$Entry;

    invoke-static {v0, p1}, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/m;->c0(Lcom/grack/nanojson/JsonObject;Ljava/util/Map$Entry;)Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/m$a;

    move-result-object p1

    return-object p1
.end method
