.class final Lcom/google/firebase/crashlytics/internal/model/a$l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj4/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/crashlytics/internal/model/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "l"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lj4/d<",
        "Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final BASEADDRESS_DESCRIPTOR:Lj4/c;

.field static final INSTANCE:Lcom/google/firebase/crashlytics/internal/model/a$l;

.field private static final NAME_DESCRIPTOR:Lj4/c;

.field private static final SIZE_DESCRIPTOR:Lj4/c;

.field private static final UUID_DESCRIPTOR:Lj4/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/google/firebase/crashlytics/internal/model/a$l;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/google/firebase/crashlytics/internal/model/a$l;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lcom/google/firebase/crashlytics/internal/model/a$l;->INSTANCE:Lcom/google/firebase/crashlytics/internal/model/a$l;

    .line 8
    .line 9
    const-string v0, "baseAddress"

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Lj4/c;->d(Ljava/lang/String;)Lj4/c;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    sput-object v0, Lcom/google/firebase/crashlytics/internal/model/a$l;->BASEADDRESS_DESCRIPTOR:Lj4/c;

    .line 16
    .line 17
    const-string v0, "size"

    .line 18
    .line 19
    .line 20
    invoke-static {v0}, Lj4/c;->d(Ljava/lang/String;)Lj4/c;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    sput-object v0, Lcom/google/firebase/crashlytics/internal/model/a$l;->SIZE_DESCRIPTOR:Lj4/c;

    .line 24
    .line 25
    const-string v0, "name"

    .line 26
    .line 27
    .line 28
    invoke-static {v0}, Lj4/c;->d(Ljava/lang/String;)Lj4/c;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    sput-object v0, Lcom/google/firebase/crashlytics/internal/model/a$l;->NAME_DESCRIPTOR:Lj4/c;

    .line 32
    .line 33
    const-string v0, "uuid"

    .line 34
    .line 35
    .line 36
    invoke-static {v0}, Lj4/c;->d(Ljava/lang/String;)Lj4/c;

    .line 37
    move-result-object v0

    .line 38
    .line 39
    sput-object v0, Lcom/google/firebase/crashlytics/internal/model/a$l;->UUID_DESCRIPTOR:Lj4/c;

    .line 40
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    check-cast p1, Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$a;

    .line 3
    .line 4
    check-cast p2, Lj4/e;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/crashlytics/internal/model/a$l;->b(Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$a;Lj4/e;)V

    .line 8
    return-void
.end method

.method public b(Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$a;Lj4/e;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    sget-object v0, Lcom/google/firebase/crashlytics/internal/model/a$l;->BASEADDRESS_DESCRIPTOR:Lj4/c;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$a;->b()J

    .line 6
    move-result-wide v1

    .line 7
    .line 8
    .line 9
    invoke-interface {p2, v0, v1, v2}, Lj4/e;->e(Lj4/c;J)Lj4/e;

    .line 10
    .line 11
    sget-object v0, Lcom/google/firebase/crashlytics/internal/model/a$l;->SIZE_DESCRIPTOR:Lj4/c;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$a;->d()J

    .line 15
    move-result-wide v1

    .line 16
    .line 17
    .line 18
    invoke-interface {p2, v0, v1, v2}, Lj4/e;->e(Lj4/c;J)Lj4/e;

    .line 19
    .line 20
    sget-object v0, Lcom/google/firebase/crashlytics/internal/model/a$l;->NAME_DESCRIPTOR:Lj4/c;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$a;->c()Ljava/lang/String;

    .line 24
    move-result-object v1

    .line 25
    .line 26
    .line 27
    invoke-interface {p2, v0, v1}, Lj4/e;->c(Lj4/c;Ljava/lang/Object;)Lj4/e;

    .line 28
    .line 29
    sget-object v0, Lcom/google/firebase/crashlytics/internal/model/a$l;->UUID_DESCRIPTOR:Lj4/c;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$a;->f()[B

    .line 33
    move-result-object p1

    .line 34
    .line 35
    .line 36
    invoke-interface {p2, v0, p1}, Lj4/e;->c(Lj4/c;Ljava/lang/Object;)Lj4/e;

    .line 37
    return-void
.end method
