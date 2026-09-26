.class public Lcom/airbnb/lottie/animation/keyframe/n;
.super Lcom/airbnb/lottie/animation/keyframe/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "A:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/airbnb/lottie/animation/keyframe/a<",
        "TK;TA;>;"
    }
.end annotation


# instance fields
.field private final initialValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, v0}, Lcom/airbnb/lottie/animation/keyframe/a;-><init>(Ljava/util/List;)V

    .line 8
    .line 9
    iput-object p1, p0, Lcom/airbnb/lottie/animation/keyframe/n;->initialValue:Ljava/lang/Object;

    .line 10
    return-void
.end method


# virtual methods
.method public a(Lcom/airbnb/lottie/animation/keyframe/a$a;)V
    .locals 0

    .line 1
    return-void
.end method

.method public g()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/n;->initialValue:Ljava/lang/Object;

    return-object v0
.end method

.method public h(Lh0/a;F)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh0/a<",
            "TK;>;F)TA;"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/airbnb/lottie/animation/keyframe/n;->initialValue:Ljava/lang/Object;

    return-object p1
.end method

.method public j(F)V
    .locals 0
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
        .end annotation
    .end param

    .line 1
    return-void
.end method
