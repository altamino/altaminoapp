.class public final Lcom/airbnb/lottie/model/h;
.super Lcom/airbnb/lottie/model/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/lottie/model/b<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field private final loadedListener:Lcom/airbnb/lottie/h;

.field private final res:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Lcom/airbnb/lottie/h;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/airbnb/lottie/model/b;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/airbnb/lottie/model/h;->res:Landroid/content/res/Resources;

    .line 6
    .line 7
    iput-object p2, p0, Lcom/airbnb/lottie/model/h;->loadedListener:Lcom/airbnb/lottie/h;

    .line 8
    return-void
.end method


# virtual methods
.method protected varargs a([Lorg/json/JSONObject;)Lcom/airbnb/lottie/e;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/airbnb/lottie/model/h;->res:Landroid/content/res/Resources;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    aget-object p1, p1, v1

    .line 6
    .line 7
    .line 8
    invoke-static {v0, p1}, Lcom/airbnb/lottie/e$b;->f(Landroid/content/res/Resources;Lorg/json/JSONObject;)Lcom/airbnb/lottie/e;

    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method

.method protected b(Lcom/airbnb/lottie/e;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/airbnb/lottie/model/h;->loadedListener:Lcom/airbnb/lottie/h;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1}, Lcom/airbnb/lottie/h;->a(Lcom/airbnb/lottie/e;)V

    .line 6
    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    check-cast p1, [Lorg/json/JSONObject;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/model/h;->a([Lorg/json/JSONObject;)Lcom/airbnb/lottie/e;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    .line 2
    check-cast p1, Lcom/airbnb/lottie/e;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/model/h;->b(Lcom/airbnb/lottie/e;)V

    .line 6
    return-void
.end method
