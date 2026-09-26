.class public final Lz9/b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz9/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private automaticLocalizationHeader:Z

.field private dataToSend:[B

.field private final headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private httpMethod:Ljava/lang/String;

.field private localization:Lorg/schabi/newpipe/extractor/localization/i;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Lz9/b$a;->headers:Ljava/util/Map;

    .line 11
    const/4 v0, 0x1

    .line 12
    .line 13
    iput-boolean v0, p0, Lz9/b$a;->automaticLocalizationHeader:Z

    .line 14
    return-void
.end method

.method static bridge synthetic a(Lz9/b$a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lz9/b$a;->automaticLocalizationHeader:Z

    return p0
.end method

.method static bridge synthetic b(Lz9/b$a;)[B
    .locals 0

    .line 1
    iget-object p0, p0, Lz9/b$a;->dataToSend:[B

    return-object p0
.end method

.method static bridge synthetic c(Lz9/b$a;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lz9/b$a;->headers:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic d(Lz9/b$a;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lz9/b$a;->httpMethod:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic e(Lz9/b$a;)Lorg/schabi/newpipe/extractor/localization/i;
    .locals 0

    .line 1
    iget-object p0, p0, Lz9/b$a;->localization:Lorg/schabi/newpipe/extractor/localization/i;

    return-object p0
.end method

.method static bridge synthetic f(Lz9/b$a;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lz9/b$a;->url:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public g()Lz9/b;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lz9/b;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, p0, v1}, Lz9/b;-><init>(Lz9/b$a;Lz9/c;)V

    .line 7
    return-object v0
.end method

.method public h(Ljava/lang/String;)Lz9/b$a;
    .locals 1

    .line 1
    const-string v0, "GET"

    iput-object v0, p0, Lz9/b$a;->httpMethod:Ljava/lang/String;

    iput-object p1, p0, Lz9/b$a;->url:Ljava/lang/String;

    return-object p0
.end method

.method public i(Ljava/lang/String;)Lz9/b$a;
    .locals 1

    .line 1
    const-string v0, "HEAD"

    iput-object v0, p0, Lz9/b$a;->httpMethod:Ljava/lang/String;

    iput-object p1, p0, Lz9/b$a;->url:Ljava/lang/String;

    return-object p0
.end method

.method public j(Ljava/util/Map;)Lz9/b$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Lz9/b$a;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lz9/b$a;->headers:Ljava/util/Map;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lz9/b$a;->headers:Ljava/util/Map;

    .line 10
    .line 11
    .line 12
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 13
    :cond_0
    return-object p0
.end method

.method public k(Lorg/schabi/newpipe/extractor/localization/i;)Lz9/b$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lz9/b$a;->localization:Lorg/schabi/newpipe/extractor/localization/i;

    return-object p0
.end method

.method public l(Ljava/lang/String;[B)Lz9/b$a;
    .locals 1

    .line 1
    const-string v0, "POST"

    iput-object v0, p0, Lz9/b$a;->httpMethod:Ljava/lang/String;

    iput-object p1, p0, Lz9/b$a;->url:Ljava/lang/String;

    iput-object p2, p0, Lz9/b$a;->dataToSend:[B

    return-object p0
.end method
