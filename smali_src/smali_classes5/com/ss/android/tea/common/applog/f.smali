.class public Lcom/ss/android/tea/common/applog/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private aid:I

.field private appName:Ljava/lang/String;

.field private autoActiveUser:Z

.field private channel:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private internationalConfig:Lcom/ss/android/tea/common/applog/c;

.field private urlConfig:Lcom/ss/android/tea/common/applog/h;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;ILcom/ss/android/tea/common/applog/c;Lcom/ss/android/tea/common/applog/h;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/ss/android/tea/common/applog/f;->context:Landroid/content/Context;

    .line 6
    .line 7
    iput-boolean p2, p0, Lcom/ss/android/tea/common/applog/f;->autoActiveUser:Z

    .line 8
    .line 9
    iput-object p3, p0, Lcom/ss/android/tea/common/applog/f;->appName:Ljava/lang/String;

    .line 10
    .line 11
    iput-object p4, p0, Lcom/ss/android/tea/common/applog/f;->channel:Ljava/lang/String;

    .line 12
    .line 13
    iput p5, p0, Lcom/ss/android/tea/common/applog/f;->aid:I

    .line 14
    .line 15
    iput-object p6, p0, Lcom/ss/android/tea/common/applog/f;->internationalConfig:Lcom/ss/android/tea/common/applog/c;

    .line 16
    .line 17
    iput-object p7, p0, Lcom/ss/android/tea/common/applog/f;->urlConfig:Lcom/ss/android/tea/common/applog/h;

    .line 18
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/ss/android/tea/common/applog/f;->context:Landroid/content/Context;

    .line 3
    .line 4
    const-string v1, "context"

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Lcom/ss/android/tea/common/applog/z;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    iget-object v0, p0, Lcom/ss/android/tea/common/applog/f;->appName:Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 13
    move-result v0

    .line 14
    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    iget-object v0, p0, Lcom/ss/android/tea/common/applog/f;->channel:Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 21
    move-result v0

    .line 22
    .line 23
    if-nez v0, :cond_0

    .line 24
    return-void

    .line 25
    .line 26
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 27
    .line 28
    const-string v1, "channel is empty"

    .line 29
    .line 30
    .line 31
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 32
    throw v0

    .line 33
    .line 34
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 35
    .line 36
    const-string v1, "appName is empty"

    .line 37
    .line 38
    .line 39
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 40
    throw v0
.end method

.method public b()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ss/android/tea/common/applog/f;->aid:I

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/tea/common/applog/f;->appName:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/tea/common/applog/f;->channel:Ljava/lang/String;

    return-object v0
.end method

.method public e()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/tea/common/applog/f;->context:Landroid/content/Context;

    return-object v0
.end method

.method public f()Lcom/ss/android/tea/common/applog/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/tea/common/applog/f;->internationalConfig:Lcom/ss/android/tea/common/applog/c;

    return-object v0
.end method

.method public g()Lcom/ss/android/tea/common/applog/h;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/android/tea/common/applog/f;->urlConfig:Lcom/ss/android/tea/common/applog/h;

    return-object v0
.end method

.method public h()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ss/android/tea/common/applog/f;->autoActiveUser:Z

    return v0
.end method
