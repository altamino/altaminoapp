.class final Lcom/google/firebase/crashlytics/internal/model/a$k;
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
    name = "k"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lj4/d<",
        "Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final APPPROCESSDETAILS_DESCRIPTOR:Lj4/c;

.field private static final BACKGROUND_DESCRIPTOR:Lj4/c;

.field private static final CURRENTPROCESSDETAILS_DESCRIPTOR:Lj4/c;

.field private static final CUSTOMATTRIBUTES_DESCRIPTOR:Lj4/c;

.field private static final EXECUTION_DESCRIPTOR:Lj4/c;

.field static final INSTANCE:Lcom/google/firebase/crashlytics/internal/model/a$k;

.field private static final INTERNALKEYS_DESCRIPTOR:Lj4/c;

.field private static final UIORIENTATION_DESCRIPTOR:Lj4/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/google/firebase/crashlytics/internal/model/a$k;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/google/firebase/crashlytics/internal/model/a$k;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lcom/google/firebase/crashlytics/internal/model/a$k;->INSTANCE:Lcom/google/firebase/crashlytics/internal/model/a$k;

    .line 8
    .line 9
    const-string v0, "execution"

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Lj4/c;->d(Ljava/lang/String;)Lj4/c;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    sput-object v0, Lcom/google/firebase/crashlytics/internal/model/a$k;->EXECUTION_DESCRIPTOR:Lj4/c;

    .line 16
    .line 17
    const-string v0, "customAttributes"

    .line 18
    .line 19
    .line 20
    invoke-static {v0}, Lj4/c;->d(Ljava/lang/String;)Lj4/c;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    sput-object v0, Lcom/google/firebase/crashlytics/internal/model/a$k;->CUSTOMATTRIBUTES_DESCRIPTOR:Lj4/c;

    .line 24
    .line 25
    const-string v0, "internalKeys"

    .line 26
    .line 27
    .line 28
    invoke-static {v0}, Lj4/c;->d(Ljava/lang/String;)Lj4/c;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    sput-object v0, Lcom/google/firebase/crashlytics/internal/model/a$k;->INTERNALKEYS_DESCRIPTOR:Lj4/c;

    .line 32
    .line 33
    const-string v0, "background"

    .line 34
    .line 35
    .line 36
    invoke-static {v0}, Lj4/c;->d(Ljava/lang/String;)Lj4/c;

    .line 37
    move-result-object v0

    .line 38
    .line 39
    sput-object v0, Lcom/google/firebase/crashlytics/internal/model/a$k;->BACKGROUND_DESCRIPTOR:Lj4/c;

    .line 40
    .line 41
    const-string v0, "currentProcessDetails"

    .line 42
    .line 43
    .line 44
    invoke-static {v0}, Lj4/c;->d(Ljava/lang/String;)Lj4/c;

    .line 45
    move-result-object v0

    .line 46
    .line 47
    sput-object v0, Lcom/google/firebase/crashlytics/internal/model/a$k;->CURRENTPROCESSDETAILS_DESCRIPTOR:Lj4/c;

    .line 48
    .line 49
    const-string v0, "appProcessDetails"

    .line 50
    .line 51
    .line 52
    invoke-static {v0}, Lj4/c;->d(Ljava/lang/String;)Lj4/c;

    .line 53
    move-result-object v0

    .line 54
    .line 55
    sput-object v0, Lcom/google/firebase/crashlytics/internal/model/a$k;->APPPROCESSDETAILS_DESCRIPTOR:Lj4/c;

    .line 56
    .line 57
    const-string v0, "uiOrientation"

    .line 58
    .line 59
    .line 60
    invoke-static {v0}, Lj4/c;->d(Ljava/lang/String;)Lj4/c;

    .line 61
    move-result-object v0

    .line 62
    .line 63
    sput-object v0, Lcom/google/firebase/crashlytics/internal/model/a$k;->UIORIENTATION_DESCRIPTOR:Lj4/c;

    .line 64
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
    check-cast p1, Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a;

    .line 3
    .line 4
    check-cast p2, Lj4/e;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/crashlytics/internal/model/a$k;->b(Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a;Lj4/e;)V

    .line 8
    return-void
.end method

.method public b(Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a;Lj4/e;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    sget-object v0, Lcom/google/firebase/crashlytics/internal/model/a$k;->EXECUTION_DESCRIPTOR:Lj4/c;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a;->f()Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-interface {p2, v0, v1}, Lj4/e;->c(Lj4/c;Ljava/lang/Object;)Lj4/e;

    .line 10
    .line 11
    sget-object v0, Lcom/google/firebase/crashlytics/internal/model/a$k;->CUSTOMATTRIBUTES_DESCRIPTOR:Lj4/c;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a;->e()Ljava/util/List;

    .line 15
    move-result-object v1

    .line 16
    .line 17
    .line 18
    invoke-interface {p2, v0, v1}, Lj4/e;->c(Lj4/c;Ljava/lang/Object;)Lj4/e;

    .line 19
    .line 20
    sget-object v0, Lcom/google/firebase/crashlytics/internal/model/a$k;->INTERNALKEYS_DESCRIPTOR:Lj4/c;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a;->g()Ljava/util/List;

    .line 24
    move-result-object v1

    .line 25
    .line 26
    .line 27
    invoke-interface {p2, v0, v1}, Lj4/e;->c(Lj4/c;Ljava/lang/Object;)Lj4/e;

    .line 28
    .line 29
    sget-object v0, Lcom/google/firebase/crashlytics/internal/model/a$k;->BACKGROUND_DESCRIPTOR:Lj4/c;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a;->c()Ljava/lang/Boolean;

    .line 33
    move-result-object v1

    .line 34
    .line 35
    .line 36
    invoke-interface {p2, v0, v1}, Lj4/e;->c(Lj4/c;Ljava/lang/Object;)Lj4/e;

    .line 37
    .line 38
    sget-object v0, Lcom/google/firebase/crashlytics/internal/model/a$k;->CURRENTPROCESSDETAILS_DESCRIPTOR:Lj4/c;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a;->d()Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$c;

    .line 42
    move-result-object v1

    .line 43
    .line 44
    .line 45
    invoke-interface {p2, v0, v1}, Lj4/e;->c(Lj4/c;Ljava/lang/Object;)Lj4/e;

    .line 46
    .line 47
    sget-object v0, Lcom/google/firebase/crashlytics/internal/model/a$k;->APPPROCESSDETAILS_DESCRIPTOR:Lj4/c;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a;->b()Ljava/util/List;

    .line 51
    move-result-object v1

    .line 52
    .line 53
    .line 54
    invoke-interface {p2, v0, v1}, Lj4/e;->c(Lj4/c;Ljava/lang/Object;)Lj4/e;

    .line 55
    .line 56
    sget-object v0, Lcom/google/firebase/crashlytics/internal/model/a$k;->UIORIENTATION_DESCRIPTOR:Lj4/c;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a;->h()I

    .line 60
    move-result p1

    .line 61
    .line 62
    .line 63
    invoke-interface {p2, v0, p1}, Lj4/e;->f(Lj4/c;I)Lj4/e;

    .line 64
    return-void
.end method
