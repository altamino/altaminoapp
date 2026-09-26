.class public Lcom/google/firebase/messaging/FirebaseMessagingRegistrar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/components/ComponentRegistrar;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation


# static fields
.field private static final LIBRARY_NAME:Ljava/lang/String; = "fire-fcm"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static synthetic a(Lcom/google/firebase/components/e;)Lcom/google/firebase/messaging/FirebaseMessaging;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/firebase/messaging/FirebaseMessagingRegistrar;->lambda$getComponents$0(Lcom/google/firebase/components/e;)Lcom/google/firebase/messaging/FirebaseMessaging;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getComponents$0(Lcom/google/firebase/components/e;)Lcom/google/firebase/messaging/FirebaseMessaging;
    .locals 9

    .line 1
    .line 2
    new-instance v8, Lcom/google/firebase/messaging/FirebaseMessaging;

    .line 3
    .line 4
    const-class v0, Lcom/google/firebase/f;

    .line 5
    .line 6
    .line 7
    invoke-interface {p0, v0}, Lcom/google/firebase/components/e;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    move-object v1, v0

    .line 10
    .line 11
    check-cast v1, Lcom/google/firebase/f;

    .line 12
    .line 13
    const-class v0, Ln4/a;

    .line 14
    .line 15
    .line 16
    invoke-interface {p0, v0}, Lcom/google/firebase/components/e;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 17
    move-result-object v0

    .line 18
    move-object v2, v0

    .line 19
    .line 20
    check-cast v2, Ln4/a;

    .line 21
    .line 22
    const-class v0, Lb5/i;

    .line 23
    .line 24
    .line 25
    invoke-interface {p0, v0}, Lcom/google/firebase/components/e;->b(Ljava/lang/Class;)Lo4/b;

    .line 26
    move-result-object v3

    .line 27
    .line 28
    const-class v0, Lm4/j;

    .line 29
    .line 30
    .line 31
    invoke-interface {p0, v0}, Lcom/google/firebase/components/e;->b(Ljava/lang/Class;)Lo4/b;

    .line 32
    move-result-object v4

    .line 33
    .line 34
    const-class v0, Lcom/google/firebase/installations/h;

    .line 35
    .line 36
    .line 37
    invoke-interface {p0, v0}, Lcom/google/firebase/components/e;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 38
    move-result-object v0

    .line 39
    move-object v5, v0

    .line 40
    .line 41
    check-cast v5, Lcom/google/firebase/installations/h;

    .line 42
    .line 43
    const-class v0, Lf2/g;

    .line 44
    .line 45
    .line 46
    invoke-interface {p0, v0}, Lcom/google/firebase/components/e;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 47
    move-result-object v0

    .line 48
    move-object v6, v0

    .line 49
    .line 50
    check-cast v6, Lf2/g;

    .line 51
    .line 52
    const-class v0, Ll4/d;

    .line 53
    .line 54
    .line 55
    invoke-interface {p0, v0}, Lcom/google/firebase/components/e;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 56
    move-result-object p0

    .line 57
    move-object v7, p0

    .line 58
    .line 59
    check-cast v7, Ll4/d;

    .line 60
    move-object v0, v8

    .line 61
    .line 62
    .line 63
    invoke-direct/range {v0 .. v7}, Lcom/google/firebase/messaging/FirebaseMessaging;-><init>(Lcom/google/firebase/f;Ln4/a;Lo4/b;Lo4/b;Lcom/google/firebase/installations/h;Lf2/g;Ll4/d;)V

    .line 64
    return-object v8
.end method


# virtual methods
.method public getComponents()Ljava/util/List;
    .locals 4
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firebase/components/c<",
            "*>;>;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x2

    .line 2
    .line 3
    new-array v0, v0, [Lcom/google/firebase/components/c;

    .line 4
    .line 5
    const-class v1, Lcom/google/firebase/messaging/FirebaseMessaging;

    .line 6
    .line 7
    .line 8
    invoke-static {v1}, Lcom/google/firebase/components/c;->e(Ljava/lang/Class;)Lcom/google/firebase/components/c$b;

    .line 9
    move-result-object v1

    .line 10
    .line 11
    const-string v2, "fire-fcm"

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, v2}, Lcom/google/firebase/components/c$b;->h(Ljava/lang/String;)Lcom/google/firebase/components/c$b;

    .line 15
    move-result-object v1

    .line 16
    .line 17
    const-class v3, Lcom/google/firebase/f;

    .line 18
    .line 19
    .line 20
    invoke-static {v3}, Lcom/google/firebase/components/s;->k(Ljava/lang/Class;)Lcom/google/firebase/components/s;

    .line 21
    move-result-object v3

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, v3}, Lcom/google/firebase/components/c$b;->b(Lcom/google/firebase/components/s;)Lcom/google/firebase/components/c$b;

    .line 25
    move-result-object v1

    .line 26
    .line 27
    const-class v3, Ln4/a;

    .line 28
    .line 29
    .line 30
    invoke-static {v3}, Lcom/google/firebase/components/s;->h(Ljava/lang/Class;)Lcom/google/firebase/components/s;

    .line 31
    move-result-object v3

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, v3}, Lcom/google/firebase/components/c$b;->b(Lcom/google/firebase/components/s;)Lcom/google/firebase/components/c$b;

    .line 35
    move-result-object v1

    .line 36
    .line 37
    const-class v3, Lb5/i;

    .line 38
    .line 39
    .line 40
    invoke-static {v3}, Lcom/google/firebase/components/s;->i(Ljava/lang/Class;)Lcom/google/firebase/components/s;

    .line 41
    move-result-object v3

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, v3}, Lcom/google/firebase/components/c$b;->b(Lcom/google/firebase/components/s;)Lcom/google/firebase/components/c$b;

    .line 45
    move-result-object v1

    .line 46
    .line 47
    const-class v3, Lm4/j;

    .line 48
    .line 49
    .line 50
    invoke-static {v3}, Lcom/google/firebase/components/s;->i(Ljava/lang/Class;)Lcom/google/firebase/components/s;

    .line 51
    move-result-object v3

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, v3}, Lcom/google/firebase/components/c$b;->b(Lcom/google/firebase/components/s;)Lcom/google/firebase/components/c$b;

    .line 55
    move-result-object v1

    .line 56
    .line 57
    const-class v3, Lf2/g;

    .line 58
    .line 59
    .line 60
    invoke-static {v3}, Lcom/google/firebase/components/s;->h(Ljava/lang/Class;)Lcom/google/firebase/components/s;

    .line 61
    move-result-object v3

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1, v3}, Lcom/google/firebase/components/c$b;->b(Lcom/google/firebase/components/s;)Lcom/google/firebase/components/c$b;

    .line 65
    move-result-object v1

    .line 66
    .line 67
    const-class v3, Lcom/google/firebase/installations/h;

    .line 68
    .line 69
    .line 70
    invoke-static {v3}, Lcom/google/firebase/components/s;->k(Ljava/lang/Class;)Lcom/google/firebase/components/s;

    .line 71
    move-result-object v3

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1, v3}, Lcom/google/firebase/components/c$b;->b(Lcom/google/firebase/components/s;)Lcom/google/firebase/components/c$b;

    .line 75
    move-result-object v1

    .line 76
    .line 77
    const-class v3, Ll4/d;

    .line 78
    .line 79
    .line 80
    invoke-static {v3}, Lcom/google/firebase/components/s;->k(Ljava/lang/Class;)Lcom/google/firebase/components/s;

    .line 81
    move-result-object v3

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1, v3}, Lcom/google/firebase/components/c$b;->b(Lcom/google/firebase/components/s;)Lcom/google/firebase/components/c$b;

    .line 85
    move-result-object v1

    .line 86
    .line 87
    new-instance v3, Lcom/google/firebase/messaging/z;

    .line 88
    .line 89
    .line 90
    invoke-direct {v3}, Lcom/google/firebase/messaging/z;-><init>()V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v1, v3}, Lcom/google/firebase/components/c$b;->f(Lcom/google/firebase/components/h;)Lcom/google/firebase/components/c$b;

    .line 94
    move-result-object v1

    .line 95
    .line 96
    .line 97
    invoke-virtual {v1}, Lcom/google/firebase/components/c$b;->c()Lcom/google/firebase/components/c$b;

    .line 98
    move-result-object v1

    .line 99
    .line 100
    .line 101
    invoke-virtual {v1}, Lcom/google/firebase/components/c$b;->d()Lcom/google/firebase/components/c;

    .line 102
    move-result-object v1

    .line 103
    const/4 v3, 0x0

    .line 104
    .line 105
    aput-object v1, v0, v3

    .line 106
    .line 107
    const-string v1, "23.3.1"

    .line 108
    .line 109
    .line 110
    invoke-static {v2, v1}, Lb5/h;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/components/c;

    .line 111
    move-result-object v1

    .line 112
    const/4 v2, 0x1

    .line 113
    .line 114
    aput-object v1, v0, v2

    .line 115
    .line 116
    .line 117
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 118
    move-result-object v0

    .line 119
    return-object v0
.end method
