.class Lcom/airbnb/lottie/model/animatable/b$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/airbnb/lottie/model/animatable/m$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/model/animatable/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/airbnb/lottie/model/animatable/m$a<",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# static fields
.field static final INSTANCE:Lcom/airbnb/lottie/model/animatable/b$c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/airbnb/lottie/model/animatable/b$c;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/airbnb/lottie/model/animatable/b$c;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lcom/airbnb/lottie/model/animatable/b$c;->INSTANCE:Lcom/airbnb/lottie/model/animatable/b$c;

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
    invoke-virtual {p0, p1, p2}, Lcom/airbnb/lottie/model/animatable/b$c;->b(Ljava/lang/Object;F)Ljava/lang/Float;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public b(Ljava/lang/Object;F)Ljava/lang/Float;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Lcom/airbnb/lottie/utils/b;->c(Ljava/lang/Object;)F

    .line 4
    move-result p1

    .line 5
    mul-float/2addr p1, p2

    .line 6
    .line 7
    .line 8
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method
