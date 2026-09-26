.class final Lcom/google/firebase/installations/remote/a$b;
.super Lcom/google/firebase/installations/remote/d$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/installations/remote/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field private authToken:Lcom/google/firebase/installations/remote/f;

.field private fid:Ljava/lang/String;

.field private refreshToken:Ljava/lang/String;

.field private responseCode:Lcom/google/firebase/installations/remote/d$b;

.field private uri:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/firebase/installations/remote/d$a;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public a()Lcom/google/firebase/installations/remote/d;
    .locals 8

    .line 1
    .line 2
    new-instance v7, Lcom/google/firebase/installations/remote/a;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/google/firebase/installations/remote/a$b;->uri:Ljava/lang/String;

    .line 5
    .line 6
    iget-object v2, p0, Lcom/google/firebase/installations/remote/a$b;->fid:Ljava/lang/String;

    .line 7
    .line 8
    iget-object v3, p0, Lcom/google/firebase/installations/remote/a$b;->refreshToken:Ljava/lang/String;

    .line 9
    .line 10
    iget-object v4, p0, Lcom/google/firebase/installations/remote/a$b;->authToken:Lcom/google/firebase/installations/remote/f;

    .line 11
    .line 12
    iget-object v5, p0, Lcom/google/firebase/installations/remote/a$b;->responseCode:Lcom/google/firebase/installations/remote/d$b;

    .line 13
    const/4 v6, 0x0

    .line 14
    move-object v0, v7

    .line 15
    .line 16
    .line 17
    invoke-direct/range {v0 .. v6}, Lcom/google/firebase/installations/remote/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/installations/remote/f;Lcom/google/firebase/installations/remote/d$b;Lcom/google/firebase/installations/remote/a$a;)V

    .line 18
    return-object v7
.end method

.method public b(Lcom/google/firebase/installations/remote/f;)Lcom/google/firebase/installations/remote/d$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/firebase/installations/remote/a$b;->authToken:Lcom/google/firebase/installations/remote/f;

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/google/firebase/installations/remote/d$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/firebase/installations/remote/a$b;->fid:Ljava/lang/String;

    return-object p0
.end method

.method public d(Ljava/lang/String;)Lcom/google/firebase/installations/remote/d$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/firebase/installations/remote/a$b;->refreshToken:Ljava/lang/String;

    return-object p0
.end method

.method public e(Lcom/google/firebase/installations/remote/d$b;)Lcom/google/firebase/installations/remote/d$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/firebase/installations/remote/a$b;->responseCode:Lcom/google/firebase/installations/remote/d$b;

    return-object p0
.end method

.method public f(Ljava/lang/String;)Lcom/google/firebase/installations/remote/d$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/firebase/installations/remote/a$b;->uri:Ljava/lang/String;

    return-object p0
.end method
