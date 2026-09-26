.class public final synthetic Lorg/schabi/newpipe/extractor/services/youtube/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Ljava/util/List;

.field public final synthetic b:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/extractor/services/youtube/f;->a:Ljava/util/List;

    iput-object p2, p0, Lorg/schabi/newpipe/extractor/services/youtube/f;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/f;->a:Ljava/util/List;

    iget-object v1, p0, Lorg/schabi/newpipe/extractor/services/youtube/f;->b:Ljava/util/List;

    check-cast p1, Lcom/grack/nanojson/JsonObject;

    invoke-static {v0, v1, p1}, Lorg/schabi/newpipe/extractor/services/youtube/i;->f(Ljava/util/List;Ljava/util/List;Lcom/grack/nanojson/JsonObject;)V

    return-void
.end method
