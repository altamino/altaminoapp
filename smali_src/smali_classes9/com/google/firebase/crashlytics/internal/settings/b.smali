.class Lcom/google/firebase/crashlytics/internal/settings/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/crashlytics/internal/settings/h;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method static b(Lcom/google/firebase/crashlytics/internal/common/w;)Lcom/google/firebase/crashlytics/internal/settings/d;
    .locals 14

    .line 1
    const/4 v5, 0x0

    .line 2
    .line 3
    const/16 v6, 0xe10

    .line 4
    .line 5
    const-wide/high16 v7, 0x4024000000000000L    # 10.0

    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    const-wide v9, 0x3ff3333333333333L    # 1.2

    .line 11
    .line 12
    const/16 v11, 0x3c

    .line 13
    .line 14
    new-instance v3, Lcom/google/firebase/crashlytics/internal/settings/d$b;

    .line 15
    .line 16
    const/16 v0, 0x8

    .line 17
    const/4 v1, 0x4

    .line 18
    .line 19
    .line 20
    invoke-direct {v3, v0, v1}, Lcom/google/firebase/crashlytics/internal/settings/d$b;-><init>(II)V

    .line 21
    .line 22
    new-instance v4, Lcom/google/firebase/crashlytics/internal/settings/d$a;

    .line 23
    const/4 v0, 0x1

    .line 24
    const/4 v1, 0x0

    .line 25
    .line 26
    .line 27
    invoke-direct {v4, v0, v1, v1}, Lcom/google/firebase/crashlytics/internal/settings/d$a;-><init>(ZZZ)V

    .line 28
    .line 29
    .line 30
    invoke-interface {p0}, Lcom/google/firebase/crashlytics/internal/common/w;->a()J

    .line 31
    move-result-wide v0

    .line 32
    .line 33
    .line 34
    const p0, 0x36ee80

    .line 35
    int-to-long v12, p0

    .line 36
    .line 37
    add-long v1, v0, v12

    .line 38
    .line 39
    new-instance p0, Lcom/google/firebase/crashlytics/internal/settings/d;

    .line 40
    move-object v0, p0

    .line 41
    .line 42
    .line 43
    invoke-direct/range {v0 .. v11}, Lcom/google/firebase/crashlytics/internal/settings/d;-><init>(JLcom/google/firebase/crashlytics/internal/settings/d$b;Lcom/google/firebase/crashlytics/internal/settings/d$a;IIDDI)V

    .line 44
    return-object p0
.end method


# virtual methods
.method public a(Lcom/google/firebase/crashlytics/internal/common/w;Lorg/json/JSONObject;)Lcom/google/firebase/crashlytics/internal/settings/d;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Lcom/google/firebase/crashlytics/internal/settings/b;->b(Lcom/google/firebase/crashlytics/internal/common/w;)Lcom/google/firebase/crashlytics/internal/settings/d;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
