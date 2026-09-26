.class Lcom/airbnb/lottie/model/animatable/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/airbnb/lottie/model/animatable/m$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/model/animatable/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/airbnb/lottie/model/animatable/m$a<",
        "Landroid/graphics/PointF;",
        ">;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcom/airbnb/lottie/model/animatable/m$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/model/animatable/m$a<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/airbnb/lottie/model/animatable/e$a;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/airbnb/lottie/model/animatable/e$a;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lcom/airbnb/lottie/model/animatable/e$a;->INSTANCE:Lcom/airbnb/lottie/model/animatable/m$a;

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

.method static synthetic b()Lcom/airbnb/lottie/model/animatable/m$a;
    .locals 1

    .line 1
    sget-object v0, Lcom/airbnb/lottie/model/animatable/e$a;->INSTANCE:Lcom/airbnb/lottie/model/animatable/m$a;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;F)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/airbnb/lottie/model/animatable/e$a;->c(Ljava/lang/Object;F)Landroid/graphics/PointF;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public c(Ljava/lang/Object;F)Landroid/graphics/PointF;
    .locals 0

    .line 1
    .line 2
    check-cast p1, Lorg/json/JSONArray;

    .line 3
    .line 4
    .line 5
    invoke-static {p1, p2}, Lcom/airbnb/lottie/utils/b;->a(Lorg/json/JSONArray;F)Landroid/graphics/PointF;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
