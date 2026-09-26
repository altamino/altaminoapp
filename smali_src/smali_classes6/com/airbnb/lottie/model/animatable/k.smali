.class public Lcom/airbnb/lottie/model/animatable/k;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/lottie/model/animatable/k$a;
    }
.end annotation


# instance fields
.field public final color:Lcom/airbnb/lottie/model/animatable/a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final stroke:Lcom/airbnb/lottie/model/animatable/a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final strokeWidth:Lcom/airbnb/lottie/model/animatable/b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final tracking:Lcom/airbnb/lottie/model/animatable/b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/model/animatable/a;Lcom/airbnb/lottie/model/animatable/a;Lcom/airbnb/lottie/model/animatable/b;Lcom/airbnb/lottie/model/animatable/b;)V
    .locals 0
    .param p1    # Lcom/airbnb/lottie/model/animatable/a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/airbnb/lottie/model/animatable/a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/airbnb/lottie/model/animatable/b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/airbnb/lottie/model/animatable/b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/airbnb/lottie/model/animatable/k;->color:Lcom/airbnb/lottie/model/animatable/a;

    .line 6
    .line 7
    iput-object p2, p0, Lcom/airbnb/lottie/model/animatable/k;->stroke:Lcom/airbnb/lottie/model/animatable/a;

    .line 8
    .line 9
    iput-object p3, p0, Lcom/airbnb/lottie/model/animatable/k;->strokeWidth:Lcom/airbnb/lottie/model/animatable/b;

    .line 10
    .line 11
    iput-object p4, p0, Lcom/airbnb/lottie/model/animatable/k;->tracking:Lcom/airbnb/lottie/model/animatable/b;

    .line 12
    return-void
.end method
