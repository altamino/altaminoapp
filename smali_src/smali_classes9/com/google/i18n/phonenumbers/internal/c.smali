.class public Lcom/google/i18n/phonenumbers/internal/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/i18n/phonenumbers/internal/c$a;
    }
.end annotation


# instance fields
.field private cache:Lcom/google/i18n/phonenumbers/internal/c$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/i18n/phonenumbers/internal/c$a<",
            "Ljava/lang/String;",
            "Ljava/util/regex/Pattern;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Lcom/google/i18n/phonenumbers/internal/c$a;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p1}, Lcom/google/i18n/phonenumbers/internal/c$a;-><init>(I)V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/google/i18n/phonenumbers/internal/c;->cache:Lcom/google/i18n/phonenumbers/internal/c$a;

    .line 11
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/util/regex/Pattern;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/internal/c;->cache:Lcom/google/i18n/phonenumbers/internal/c$a;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/google/i18n/phonenumbers/internal/c$a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Ljava/util/regex/Pattern;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    iget-object v1, p0, Lcom/google/i18n/phonenumbers/internal/c;->cache:Lcom/google/i18n/phonenumbers/internal/c$a;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, p1, v0}, Lcom/google/i18n/phonenumbers/internal/c$a;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 20
    :cond_0
    return-object v0
.end method
