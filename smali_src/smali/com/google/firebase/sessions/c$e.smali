.class final Lcom/google/firebase/sessions/c$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj4/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/sessions/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lj4/d<",
        "Lcom/google/firebase/sessions/z;",
        ">;"
    }
.end annotation


# static fields
.field private static final APPLICATIONINFO_DESCRIPTOR:Lj4/c;

.field private static final EVENTTYPE_DESCRIPTOR:Lj4/c;

.field static final INSTANCE:Lcom/google/firebase/sessions/c$e;

.field private static final SESSIONDATA_DESCRIPTOR:Lj4/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/google/firebase/sessions/c$e;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/google/firebase/sessions/c$e;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lcom/google/firebase/sessions/c$e;->INSTANCE:Lcom/google/firebase/sessions/c$e;

    .line 8
    .line 9
    const-string v0, "eventType"

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Lj4/c;->d(Ljava/lang/String;)Lj4/c;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    sput-object v0, Lcom/google/firebase/sessions/c$e;->EVENTTYPE_DESCRIPTOR:Lj4/c;

    .line 16
    .line 17
    const-string/jumbo v0, "sessionData"

    .line 18
    .line 19
    .line 20
    invoke-static {v0}, Lj4/c;->d(Ljava/lang/String;)Lj4/c;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    sput-object v0, Lcom/google/firebase/sessions/c$e;->SESSIONDATA_DESCRIPTOR:Lj4/c;

    .line 24
    .line 25
    const-string v0, "applicationInfo"

    .line 26
    .line 27
    .line 28
    invoke-static {v0}, Lj4/c;->d(Ljava/lang/String;)Lj4/c;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    sput-object v0, Lcom/google/firebase/sessions/c$e;->APPLICATIONINFO_DESCRIPTOR:Lj4/c;

    .line 32
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
    check-cast p1, Lcom/google/firebase/sessions/z;

    .line 3
    .line 4
    check-cast p2, Lj4/e;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/sessions/c$e;->b(Lcom/google/firebase/sessions/z;Lj4/e;)V

    .line 8
    return-void
.end method

.method public b(Lcom/google/firebase/sessions/z;Lj4/e;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    sget-object v0, Lcom/google/firebase/sessions/c$e;->EVENTTYPE_DESCRIPTOR:Lj4/c;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/google/firebase/sessions/z;->b()Lcom/google/firebase/sessions/i;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-interface {p2, v0, v1}, Lj4/e;->c(Lj4/c;Ljava/lang/Object;)Lj4/e;

    .line 10
    .line 11
    sget-object v0, Lcom/google/firebase/sessions/c$e;->SESSIONDATA_DESCRIPTOR:Lj4/c;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/google/firebase/sessions/z;->c()Lcom/google/firebase/sessions/e0;

    .line 15
    move-result-object v1

    .line 16
    .line 17
    .line 18
    invoke-interface {p2, v0, v1}, Lj4/e;->c(Lj4/c;Ljava/lang/Object;)Lj4/e;

    .line 19
    .line 20
    sget-object v0, Lcom/google/firebase/sessions/c$e;->APPLICATIONINFO_DESCRIPTOR:Lj4/c;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/google/firebase/sessions/z;->a()Lcom/google/firebase/sessions/b;

    .line 24
    move-result-object p1

    .line 25
    .line 26
    .line 27
    invoke-interface {p2, v0, p1}, Lj4/e;->c(Lj4/c;Ljava/lang/Object;)Lj4/e;

    .line 28
    return-void
.end method
