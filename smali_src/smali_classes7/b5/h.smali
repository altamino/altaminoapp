.class public Lb5/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb5/h$a;
    }
.end annotation


# direct methods
.method public static synthetic a(Ljava/lang/String;Lb5/h$a;Lcom/google/firebase/components/e;)Lb5/f;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lb5/h;->d(Ljava/lang/String;Lb5/h$a;Lcom/google/firebase/components/e;)Lb5/f;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/components/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/firebase/components/c<",
            "*>;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Lb5/f;->a(Ljava/lang/String;Ljava/lang/String;)Lb5/f;

    .line 4
    move-result-object p0

    .line 5
    .line 6
    const-class p1, Lb5/f;

    .line 7
    .line 8
    .line 9
    invoke-static {p0, p1}, Lcom/google/firebase/components/c;->l(Ljava/lang/Object;Ljava/lang/Class;)Lcom/google/firebase/components/c;

    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public static c(Ljava/lang/String;Lb5/h$a;)Lcom/google/firebase/components/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lb5/h$a<",
            "Landroid/content/Context;",
            ">;)",
            "Lcom/google/firebase/components/c<",
            "*>;"
        }
    .end annotation

    .line 1
    .line 2
    const-class v0, Lb5/f;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/firebase/components/c;->m(Ljava/lang/Class;)Lcom/google/firebase/components/c$b;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    const-class v1, Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    invoke-static {v1}, Lcom/google/firebase/components/s;->k(Ljava/lang/Class;)Lcom/google/firebase/components/s;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lcom/google/firebase/components/c$b;->b(Lcom/google/firebase/components/s;)Lcom/google/firebase/components/c$b;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    new-instance v1, Lb5/g;

    .line 19
    .line 20
    .line 21
    invoke-direct {v1, p0, p1}, Lb5/g;-><init>(Ljava/lang/String;Lb5/h$a;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Lcom/google/firebase/components/c$b;->f(Lcom/google/firebase/components/h;)Lcom/google/firebase/components/c$b;

    .line 25
    move-result-object p0

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/google/firebase/components/c$b;->d()Lcom/google/firebase/components/c;

    .line 29
    move-result-object p0

    .line 30
    return-object p0
.end method

.method private static synthetic d(Ljava/lang/String;Lb5/h$a;Lcom/google/firebase/components/e;)Lb5/f;
    .locals 1

    .line 1
    .line 2
    const-class v0, Landroid/content/Context;

    .line 3
    .line 4
    .line 5
    invoke-interface {p2, v0}, Lcom/google/firebase/components/e;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 6
    move-result-object p2

    .line 7
    .line 8
    check-cast p2, Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    invoke-interface {p1, p2}, Lb5/h$a;->a(Ljava/lang/Object;)Ljava/lang/String;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    .line 15
    invoke-static {p0, p1}, Lb5/f;->a(Ljava/lang/String;Ljava/lang/String;)Lb5/f;

    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method
