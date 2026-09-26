.class public final synthetic Lma/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:Lma/h0;

.field public final synthetic b:Lorg/schabi/newpipe/extractor/services/youtube/a$a;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lma/h0;Lorg/schabi/newpipe/extractor/services/youtube/a$a;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lma/z;->a:Lma/h0;

    iput-object p2, p0, Lma/z;->b:Lorg/schabi/newpipe/extractor/services/youtube/a$a;

    iput-object p3, p0, Lma/z;->c:Ljava/lang/String;

    iput-object p4, p0, Lma/z;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lma/z;->a:Lma/h0;

    iget-object v1, p0, Lma/z;->b:Lorg/schabi/newpipe/extractor/services/youtube/a$a;

    iget-object v2, p0, Lma/z;->c:Ljava/lang/String;

    iget-object v3, p0, Lma/z;->d:Ljava/lang/String;

    check-cast p1, Lcom/grack/nanojson/JsonObject;

    invoke-static {v0, v1, v2, v3, p1}, Lma/h0;->d0(Lma/h0;Lorg/schabi/newpipe/extractor/services/youtube/a$a;Ljava/lang/String;Ljava/lang/String;Lcom/grack/nanojson/JsonObject;)Lma/a;

    move-result-object p1

    return-object p1
.end method
