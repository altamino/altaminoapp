.class public Lcom/ss/android/tea/common/applog/g;
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


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x1

    .line 5
    .line 6
    iput-boolean v0, p0, Lcom/ss/android/tea/common/applog/g;->autoActiveUser:Z

    .line 7
    .line 8
    iput-object p1, p0, Lcom/ss/android/tea/common/applog/g;->context:Landroid/content/Context;

    .line 9
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/ss/android/tea/common/applog/g;
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/ss/android/tea/common/applog/g;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0}, Lcom/ss/android/tea/common/applog/g;-><init>(Landroid/content/Context;)V

    .line 6
    return-object v0
.end method


# virtual methods
.method public b()Lcom/ss/android/tea/common/applog/f;
    .locals 9

    .line 1
    .line 2
    new-instance v8, Lcom/ss/android/tea/common/applog/f;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/ss/android/tea/common/applog/g;->context:Landroid/content/Context;

    .line 5
    .line 6
    iget-boolean v2, p0, Lcom/ss/android/tea/common/applog/g;->autoActiveUser:Z

    .line 7
    .line 8
    iget-object v3, p0, Lcom/ss/android/tea/common/applog/g;->appName:Ljava/lang/String;

    .line 9
    .line 10
    iget-object v4, p0, Lcom/ss/android/tea/common/applog/g;->channel:Ljava/lang/String;

    .line 11
    .line 12
    iget v5, p0, Lcom/ss/android/tea/common/applog/g;->aid:I

    .line 13
    .line 14
    iget-object v6, p0, Lcom/ss/android/tea/common/applog/g;->internationalConfig:Lcom/ss/android/tea/common/applog/c;

    .line 15
    .line 16
    iget-object v7, p0, Lcom/ss/android/tea/common/applog/g;->urlConfig:Lcom/ss/android/tea/common/applog/h;

    .line 17
    move-object v0, v8

    .line 18
    .line 19
    .line 20
    invoke-direct/range {v0 .. v7}, Lcom/ss/android/tea/common/applog/f;-><init>(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;ILcom/ss/android/tea/common/applog/c;Lcom/ss/android/tea/common/applog/h;)V

    .line 21
    return-object v8
.end method

.method public c(I)Lcom/ss/android/tea/common/applog/g;
    .locals 0

    .line 1
    iput p1, p0, Lcom/ss/android/tea/common/applog/g;->aid:I

    return-object p0
.end method

.method public d(Ljava/lang/String;)Lcom/ss/android/tea/common/applog/g;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/android/tea/common/applog/g;->appName:Ljava/lang/String;

    return-object p0
.end method

.method public e(Ljava/lang/String;)Lcom/ss/android/tea/common/applog/g;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/android/tea/common/applog/g;->channel:Ljava/lang/String;

    return-object p0
.end method

.method public f(Lcom/ss/android/tea/common/applog/c;)Lcom/ss/android/tea/common/applog/g;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/android/tea/common/applog/g;->internationalConfig:Lcom/ss/android/tea/common/applog/c;

    return-object p0
.end method

.method public g(Lcom/ss/android/tea/common/applog/h;)Lcom/ss/android/tea/common/applog/g;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/android/tea/common/applog/g;->urlConfig:Lcom/ss/android/tea/common/applog/h;

    return-object p0
.end method
