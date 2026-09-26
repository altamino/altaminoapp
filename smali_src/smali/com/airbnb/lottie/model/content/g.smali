.class public Lcom/airbnb/lottie/model/content/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/lottie/model/content/g$b;,
        Lcom/airbnb/lottie/model/content/g$c;
    }
.end annotation


# instance fields
.field private final maskMode:Lcom/airbnb/lottie/model/content/g$c;

.field private final maskPath:Lcom/airbnb/lottie/model/animatable/h;

.field private final opacity:Lcom/airbnb/lottie/model/animatable/d;


# direct methods
.method private constructor <init>(Lcom/airbnb/lottie/model/content/g$c;Lcom/airbnb/lottie/model/animatable/h;Lcom/airbnb/lottie/model/animatable/d;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/airbnb/lottie/model/content/g;->maskMode:Lcom/airbnb/lottie/model/content/g$c;

    iput-object p2, p0, Lcom/airbnb/lottie/model/content/g;->maskPath:Lcom/airbnb/lottie/model/animatable/h;

    iput-object p3, p0, Lcom/airbnb/lottie/model/content/g;->opacity:Lcom/airbnb/lottie/model/animatable/d;

    return-void
.end method

.method synthetic constructor <init>(Lcom/airbnb/lottie/model/content/g$c;Lcom/airbnb/lottie/model/animatable/h;Lcom/airbnb/lottie/model/animatable/d;Lcom/airbnb/lottie/model/content/g$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/airbnb/lottie/model/content/g;-><init>(Lcom/airbnb/lottie/model/content/g$c;Lcom/airbnb/lottie/model/animatable/h;Lcom/airbnb/lottie/model/animatable/d;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/airbnb/lottie/model/content/g$c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/model/content/g;->maskMode:Lcom/airbnb/lottie/model/content/g$c;

    return-object v0
.end method

.method public b()Lcom/airbnb/lottie/model/animatable/h;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/model/content/g;->maskPath:Lcom/airbnb/lottie/model/animatable/h;

    return-object v0
.end method

.method public c()Lcom/airbnb/lottie/model/animatable/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/model/content/g;->opacity:Lcom/airbnb/lottie/model/animatable/d;

    return-object v0
.end method
