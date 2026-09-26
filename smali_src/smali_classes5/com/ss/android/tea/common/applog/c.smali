.class public Lcom/ss/android/tea/common/applog/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private googleId:Ljava/lang/String;

.field private language:Ljava/lang/String;

.field private region:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/ss/android/tea/common/applog/c;->googleId:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p2, p0, Lcom/ss/android/tea/common/applog/c;->language:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p3, p0, Lcom/ss/android/tea/common/applog/c;->region:Ljava/lang/String;

    .line 10
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/tea/common/applog/c;->googleId:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/tea/common/applog/c;->language:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/tea/common/applog/c;->region:Ljava/lang/String;

    return-object v0
.end method
