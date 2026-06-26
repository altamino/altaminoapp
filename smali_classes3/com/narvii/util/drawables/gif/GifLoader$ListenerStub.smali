.class Lcom/narvii/util/drawables/gif/GifLoader$ListenerStub;
.super Ljava/lang/Object;
.source "GifLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/util/drawables/gif/GifLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ListenerStub"
.end annotation


# instance fields
.field listener:Lcom/narvii/util/drawables/DrawableLoaderListener;

.field url:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/narvii/util/drawables/DrawableLoaderListener;)V
    .locals 0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/narvii/util/drawables/gif/GifLoader$ListenerStub;->url:Ljava/lang/String;

    .line 73
    iput-object p2, p0, Lcom/narvii/util/drawables/gif/GifLoader$ListenerStub;->listener:Lcom/narvii/util/drawables/DrawableLoaderListener;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p1, p0, :cond_1

    .line 83
    instance-of v0, p1, Lcom/narvii/util/drawables/gif/GifLoader$ListenerStub;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/narvii/util/drawables/gif/GifLoader$ListenerStub;

    iget-object p1, p1, Lcom/narvii/util/drawables/gif/GifLoader$ListenerStub;->listener:Lcom/narvii/util/drawables/DrawableLoaderListener;

    iget-object v0, p0, Lcom/narvii/util/drawables/gif/GifLoader$ListenerStub;->listener:Lcom/narvii/util/drawables/DrawableLoaderListener;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/narvii/util/drawables/gif/GifLoader$ListenerStub;->listener:Lcom/narvii/util/drawables/DrawableLoaderListener;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
