.class public Lcom/ss/android/tea/common/applog/e;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Lcom/ss/android/tea/common/applog/f;)V
    .locals 4

    .line 1
    .line 2
    const-string v0, "TeaConfig"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lcom/ss/android/tea/common/applog/z;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/ss/android/tea/common/applog/f;->a()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/ss/android/tea/common/applog/f;->f()Lcom/ss/android/tea/common/applog/c;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Lcom/ss/android/tea/common/applog/e;->b(Lcom/ss/android/tea/common/applog/c;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/ss/android/tea/common/applog/f;->c()Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/ss/android/tea/common/applog/f;->d()Ljava/lang/String;

    .line 23
    move-result-object v1

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/ss/android/tea/common/applog/f;->b()I

    .line 27
    move-result v2

    .line 28
    .line 29
    new-instance v3, Lcom/ss/android/tea/common/applog/e$a;

    .line 30
    .line 31
    .line 32
    invoke-direct {v3, v0, v1, v2}, Lcom/ss/android/tea/common/applog/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/ss/android/tea/common/applog/f;->e()Landroid/content/Context;

    .line 36
    move-result-object v0

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/ss/android/tea/common/applog/f;->h()Z

    .line 40
    move-result v1

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/ss/android/tea/common/applog/f;->g()Lcom/ss/android/tea/common/applog/h;

    .line 44
    move-result-object p0

    .line 45
    .line 46
    .line 47
    invoke-static {v0, v1, v3, p0}, Lcom/ss/android/tea/common/applog/b;->z0(Landroid/content/Context;ZLn6/a;Lcom/ss/android/tea/common/applog/h;)V

    .line 48
    return-void
.end method

.method private static b(Lcom/ss/android/tea/common/applog/c;)V
    .locals 2

    .line 1
    .line 2
    if-eqz p0, :cond_1

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/ss/android/tea/common/applog/c;->a()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    move-result v1

    .line 11
    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Lcom/ss/android/tea/common/applog/b;->R0(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-virtual {p0}, Lcom/ss/android/tea/common/applog/c;->b()Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/ss/android/tea/common/applog/c;->c()Ljava/lang/String;

    .line 23
    move-result-object p0

    .line 24
    .line 25
    .line 26
    invoke-static {v0, p0}, Lcom/ss/android/tea/common/applog/b;->Q0(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    :cond_1
    return-void
.end method
