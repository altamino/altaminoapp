.class final Lcom/google/i18n/phonenumbers/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/i18n/phonenumbers/e;


# instance fields
.field private final geographicalRegions:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/google/i18n/phonenumbers/j;",
            ">;"
        }
    .end annotation
.end field

.field private final metadataLoader:Lcom/google/i18n/phonenumbers/c;

.field private final nonGeographicalRegions:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/google/i18n/phonenumbers/j;",
            ">;"
        }
    .end annotation
.end field

.field private final phoneNumberMetadataFilePrefix:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/i18n/phonenumbers/c;)V
    .locals 1

    const-string v0, "/com/google/i18n/phonenumbers/data/PhoneNumberMetadataProto"

    .line 4
    invoke-direct {p0, v0, p1}, Lcom/google/i18n/phonenumbers/f;-><init>(Ljava/lang/String;Lcom/google/i18n/phonenumbers/c;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/google/i18n/phonenumbers/c;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/i18n/phonenumbers/f;->geographicalRegions:Ljava/util/concurrent/ConcurrentHashMap;

    .line 3
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/i18n/phonenumbers/f;->nonGeographicalRegions:Ljava/util/concurrent/ConcurrentHashMap;

    iput-object p1, p0, Lcom/google/i18n/phonenumbers/f;->phoneNumberMetadataFilePrefix:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/i18n/phonenumbers/f;->metadataLoader:Lcom/google/i18n/phonenumbers/c;

    return-void
.end method

.method private c(I)Z
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/google/i18n/phonenumbers/b;->a()Ljava/util/Map;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    .line 11
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    check-cast p1, Ljava/util/List;

    .line 15
    .line 16
    .line 17
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 18
    move-result v0

    .line 19
    const/4 v1, 0x0

    .line 20
    const/4 v2, 0x1

    .line 21
    .line 22
    if-ne v0, v2, :cond_0

    .line 23
    .line 24
    const-string v0, "001"

    .line 25
    .line 26
    .line 27
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 28
    move-result-object p1

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    move-result p1

    .line 33
    .line 34
    if-eqz p1, :cond_0

    .line 35
    move v1, v2

    .line 36
    :cond_0
    return v1
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/j;
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/f;->geographicalRegions:Ljava/util/concurrent/ConcurrentHashMap;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/google/i18n/phonenumbers/f;->phoneNumberMetadataFilePrefix:Ljava/lang/String;

    .line 5
    .line 6
    iget-object v2, p0, Lcom/google/i18n/phonenumbers/f;->metadataLoader:Lcom/google/i18n/phonenumbers/c;

    .line 7
    .line 8
    .line 9
    invoke-static {p1, v0, v1, v2}, Lcom/google/i18n/phonenumbers/d;->a(Ljava/lang/Object;Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;Lcom/google/i18n/phonenumbers/c;)Lcom/google/i18n/phonenumbers/j;

    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method public b(I)Lcom/google/i18n/phonenumbers/j;
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/google/i18n/phonenumbers/f;->c(I)Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    const/4 p1, 0x0

    .line 8
    return-object p1

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/f;->nonGeographicalRegions:Ljava/util/concurrent/ConcurrentHashMap;

    .line 15
    .line 16
    iget-object v1, p0, Lcom/google/i18n/phonenumbers/f;->phoneNumberMetadataFilePrefix:Ljava/lang/String;

    .line 17
    .line 18
    iget-object v2, p0, Lcom/google/i18n/phonenumbers/f;->metadataLoader:Lcom/google/i18n/phonenumbers/c;

    .line 19
    .line 20
    .line 21
    invoke-static {p1, v0, v1, v2}, Lcom/google/i18n/phonenumbers/d;->a(Ljava/lang/Object;Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;Lcom/google/i18n/phonenumbers/c;)Lcom/google/i18n/phonenumbers/j;

    .line 22
    move-result-object p1

    .line 23
    return-object p1
.end method
