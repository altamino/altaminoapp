.class Lcom/airbnb/lottie/model/animatable/j$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/airbnb/lottie/model/animatable/m$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/model/animatable/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/airbnb/lottie/model/animatable/m$a<",
        "Lcom/airbnb/lottie/model/d;",
        ">;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcom/airbnb/lottie/model/animatable/j$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/airbnb/lottie/model/animatable/j$b;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/airbnb/lottie/model/animatable/j$b;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lcom/airbnb/lottie/model/animatable/j$b;->INSTANCE:Lcom/airbnb/lottie/model/animatable/j$b;

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

.method static synthetic b()Lcom/airbnb/lottie/model/animatable/j$b;
    .locals 1

    .line 1
    sget-object v0, Lcom/airbnb/lottie/model/animatable/j$b;->INSTANCE:Lcom/airbnb/lottie/model/animatable/j$b;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;F)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/airbnb/lottie/model/animatable/j$b;->c(Ljava/lang/Object;F)Lcom/airbnb/lottie/model/d;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public c(Ljava/lang/Object;F)Lcom/airbnb/lottie/model/d;
    .locals 0

    .line 1
    .line 2
    check-cast p1, Lorg/json/JSONObject;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lcom/airbnb/lottie/model/d$a;->a(Lorg/json/JSONObject;)Lcom/airbnb/lottie/model/d;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
