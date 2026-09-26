.class final Lcom/airbnb/lottie/animation/content/a$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/animation/content/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field private final paths:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/animation/content/k;",
            ">;"
        }
    .end annotation
.end field

.field private final trimPath:Lcom/airbnb/lottie/animation/content/q;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/airbnb/lottie/animation/content/q;)V
    .locals 1
    .param p1    # Lcom/airbnb/lottie/animation/content/q;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/a$b;->paths:Ljava/util/List;

    iput-object p1, p0, Lcom/airbnb/lottie/animation/content/a$b;->trimPath:Lcom/airbnb/lottie/animation/content/q;

    return-void
.end method

.method synthetic constructor <init>(Lcom/airbnb/lottie/animation/content/q;Lcom/airbnb/lottie/animation/content/a$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/animation/content/a$b;-><init>(Lcom/airbnb/lottie/animation/content/q;)V

    return-void
.end method

.method static synthetic a(Lcom/airbnb/lottie/animation/content/a$b;)Ljava/util/List;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/airbnb/lottie/animation/content/a$b;->paths:Ljava/util/List;

    .line 3
    return-object p0
.end method

.method static synthetic b(Lcom/airbnb/lottie/animation/content/a$b;)Lcom/airbnb/lottie/animation/content/q;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/airbnb/lottie/animation/content/a$b;->trimPath:Lcom/airbnb/lottie/animation/content/q;

    .line 3
    return-object p0
.end method
