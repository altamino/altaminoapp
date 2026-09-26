.class final Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/m$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field final streamJsonObj:Lcom/grack/nanojson/JsonObject;

.field final urlKey:Ljava/lang/String;

.field final urlValue:Lcom/grack/nanojson/JsonObject;


# direct methods
.method constructor <init>(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;Lcom/grack/nanojson/JsonObject;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/m$a;->streamJsonObj:Lcom/grack/nanojson/JsonObject;

    .line 6
    .line 7
    iput-object p2, p0, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/m$a;->urlKey:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p3, p0, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/m$a;->urlValue:Lcom/grack/nanojson/JsonObject;

    .line 10
    return-void
.end method
