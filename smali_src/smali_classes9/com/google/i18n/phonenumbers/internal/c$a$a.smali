.class Lcom/google/i18n/phonenumbers/internal/c$a$a;
.super Ljava/util/LinkedHashMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/i18n/phonenumbers/internal/c$a;-><init>(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/i18n/phonenumbers/internal/c$a;


# direct methods
.method constructor <init>(Lcom/google/i18n/phonenumbers/internal/c$a;IFZ)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/google/i18n/phonenumbers/internal/c$a$a;->this$0:Lcom/google/i18n/phonenumbers/internal/c$a;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2, p3, p4}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    .line 6
    return-void
.end method


# virtual methods
.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;)Z"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/AbstractMap;->size()I

    .line 4
    move-result p1

    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/internal/c$a$a;->this$0:Lcom/google/i18n/phonenumbers/internal/c$a;

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lcom/google/i18n/phonenumbers/internal/c$a;->a(Lcom/google/i18n/phonenumbers/internal/c$a;)I

    .line 10
    move-result v0

    .line 11
    .line 12
    if-le p1, v0, :cond_0

    .line 13
    const/4 p1, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p1, 0x0

    .line 16
    :goto_0
    return p1
.end method
