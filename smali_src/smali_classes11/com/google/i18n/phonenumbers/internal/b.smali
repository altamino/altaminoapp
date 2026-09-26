.class public final Lcom/google/i18n/phonenumbers/internal/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/i18n/phonenumbers/internal/a;


# instance fields
.field private final regexCache:Lcom/google/i18n/phonenumbers/internal/c;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Lcom/google/i18n/phonenumbers/internal/c;

    .line 6
    .line 7
    const/16 v1, 0x64

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1}, Lcom/google/i18n/phonenumbers/internal/c;-><init>(I)V

    .line 11
    .line 12
    iput-object v0, p0, Lcom/google/i18n/phonenumbers/internal/b;->regexCache:Lcom/google/i18n/phonenumbers/internal/c;

    .line 13
    return-void
.end method

.method public static b()Lcom/google/i18n/phonenumbers/internal/a;
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/google/i18n/phonenumbers/internal/b;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/google/i18n/phonenumbers/internal/b;-><init>()V

    .line 6
    return-object v0
.end method

.method private static c(Ljava/lang/CharSequence;Ljava/util/regex/Pattern;Z)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 4
    move-result-object p0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->lookingAt()Z

    .line 8
    move-result p1

    .line 9
    .line 10
    if-nez p1, :cond_0

    .line 11
    const/4 p0, 0x0

    .line 12
    return p0

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    .line 16
    move-result p0

    .line 17
    .line 18
    if-eqz p0, :cond_1

    .line 19
    const/4 p2, 0x1

    .line 20
    :cond_1
    return p2
.end method


# virtual methods
.method public a(Ljava/lang/CharSequence;Lcom/google/i18n/phonenumbers/l;Z)Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p2}, Lcom/google/i18n/phonenumbers/l;->a()Ljava/lang/String;

    .line 4
    move-result-object p2

    .line 5
    .line 6
    .line 7
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 8
    move-result v0

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    const/4 p1, 0x0

    .line 12
    return p1

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/internal/b;->regexCache:Lcom/google/i18n/phonenumbers/internal/c;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p2}, Lcom/google/i18n/phonenumbers/internal/c;->a(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 18
    move-result-object p2

    .line 19
    .line 20
    .line 21
    invoke-static {p1, p2, p3}, Lcom/google/i18n/phonenumbers/internal/b;->c(Ljava/lang/CharSequence;Ljava/util/regex/Pattern;Z)Z

    .line 22
    move-result p1

    .line 23
    return p1
.end method
