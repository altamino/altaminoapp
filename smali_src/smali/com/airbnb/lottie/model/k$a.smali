.class public Lcom/airbnb/lottie/model/k$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/airbnb/lottie/model/animatable/m$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/model/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/airbnb/lottie/model/animatable/m$a<",
        "Lcom/airbnb/lottie/model/k;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/airbnb/lottie/model/k$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/airbnb/lottie/model/k$a;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/airbnb/lottie/model/k$a;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lcom/airbnb/lottie/model/k$a;->INSTANCE:Lcom/airbnb/lottie/model/k$a;

    .line 8
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
.method public bridge synthetic a(Ljava/lang/Object;F)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/airbnb/lottie/model/k$a;->b(Ljava/lang/Object;F)Lcom/airbnb/lottie/model/k;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public b(Ljava/lang/Object;F)Lcom/airbnb/lottie/model/k;
    .locals 6

    .line 1
    .line 2
    check-cast p1, Lorg/json/JSONArray;

    .line 3
    .line 4
    new-instance v0, Lcom/airbnb/lottie/model/k;

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v1, v2, v3}, Lorg/json/JSONArray;->optDouble(ID)D

    .line 11
    move-result-wide v4

    .line 12
    double-to-float v1, v4

    .line 13
    .line 14
    const/high16 v4, 0x42c80000    # 100.0f

    .line 15
    div-float/2addr v1, v4

    .line 16
    mul-float/2addr v1, p2

    .line 17
    const/4 v5, 0x1

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v5, v2, v3}, Lorg/json/JSONArray;->optDouble(ID)D

    .line 21
    move-result-wide v2

    .line 22
    double-to-float p1, v2

    .line 23
    div-float/2addr p1, v4

    .line 24
    mul-float/2addr p1, p2

    .line 25
    .line 26
    .line 27
    invoke-direct {v0, v1, p1}, Lcom/airbnb/lottie/model/k;-><init>(FF)V

    .line 28
    return-object v0
.end method
